import React from 'react'
import { useState, memo, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import back from '../images/back.svg';
import star from '../images/star.svg';
import '../Styles/Producto.css'
import '../Styles/TemplateReservas.css'
import { useNavigate, } from 'react-router-dom'
import { Calendar, DateObject, getAllDatesInRange } from 'react-multi-date-picker'
import { eachDayOfInterval } from 'date-fns';

const TemplateReservas = () => {

    const [values, setValues] = useState([])
    const [allDates, setAllDates] = useState([])
    const [fechaInicial, setFechaInicial] = useState();
    const [fechaFinal, setFechaFinal] = useState();
    const [intervalos, setIntervalos] = useState([]);
    const [intervalosMapeados, setIntervalosMapeados] = useState(null)
    const [reserva, setReservas] = useState(null)
    const { id } = useParams();

    const endpointProducto = `${process.env.REACT_APP_SERVER_URL}/productos/${id}`
    const endpointReservas = `${process.env.REACT_APP_SERVER_URL}/reservas`
    const endpointusuario = `${process.env.REACT_APP_SERVER_URL}/usuarios`

    let navigate = useNavigate();

    const routeChange = () => {
        let path = `/reservaexitosa`;
        navigate(path);
    }

    useEffect(() => {
        const getDataProducto = async () => {
            await fetch(endpointProducto)
                .then((response) => response.json())
                .then((data) => {
                    setReservas(data)
                })
        }
        getDataProducto();
    }, [endpointProducto])

    useEffect(() => {
        setFechaInicial(reserva?.reservas?.map(res => res.fechaInicial.toString()));
        setFechaFinal(reserva?.reservas?.map(res => res.fechaFinal.toString()));
    }, [reserva])

    function getIntervalos() {
        setIntervalos([]);
        if (fechaInicial && fechaFinal)
            for (let i = 0; i < reserva.reservas.length; i++) {
                const fi = reserva.reservas[i].fechaInicial;
                const ff = reserva.reservas[i].fechaFinal;
                setIntervalos(element => [...element, ...eachDayOfInterval({
                    start: new Date(fi),
                    end: new Date(ff)
                })])
            }
    };

    useEffect(() => {
        getIntervalos()
    }, [reserva])

    useEffect(() => {
        setIntervalosMapeados([...new Set(intervalos.map(fecha => fecha.toLocaleDateString("sv")))])
    }, [intervalos])

    const checkReservaEnRango = () => {
        let fi = values[0]?.toDate().toLocaleDateString("sv")
        let ff = values[1]?.toDate().toLocaleDateString("sv")
        let int = [...eachDayOfInterval({
            start: new Date(fi),
            end: new Date(ff)
        })]
        let intM = int.map(f => f.toLocaleDateString("sv"))
        if (intM.some(f => intervalosMapeados.includes(f))) {
            return true
        } else {
            return false
        }
    }

    const postReserva = (e) => {
        e.preventDefault();
        if (!checkReservaEnRango()) {
            fetch(endpointReservas, {
                method: 'post',
                headers: {
                    'Accept': '*/*',
                    'Content-Type': 'application/json',
                    'Authorization': 'Bearer ' + JSON.parse(sessionStorage.getItem('user')).jwt
                },
                body: JSON.stringify({
                    fechaFinal: values[1].toDate().toLocaleDateString("sv"),
                    fechaInicial: values[0].toDate().toLocaleDateString("sv"),
                    id: 0,
                    producto: {
                        id: `${id}`
                    },
                    usuarios: {
                        id: JSON.parse(sessionStorage.getItem('user')).userId
                    }
                })
            })
                .then((res) => res.status === 201)
                .then(res => { if (res) { routeChange() } })
        } else {
            alert("Alguna de las fechas seleccionadas ya esta reservada. Por favor, inténtelo de nuevo.")
        }
    }

    const weekDays = [
        ["Domingo", "Dom"],
        ["Lunes", "Lun"],
        ["Martes", "Mar"],
        ["Miercoles", "Mie"],
        ["Jueves", "Jue"],
        ["Viernes", "Vie"],
        ["Sabado", "Sab"],
    ]

    const months = [
        ["Enero", "Ene"],
        ["Febrero", "Feb"],
        ["Marzo", "Mar"],
        ["Abril", "Abr"],
        ["Mayo", "May"],
        ["Junio", "Jun"],
        ["Julio", "Jul"],
        ["Agosto", "Ago"],
        ["Septiembre", "Sep"],
        ["Octubre", "Oct"],
        ["Noviembre", "Nov"],
        ["Diciembre", "Dic"],
    ]

    const [datoUsuario, setDatoUsuario] = useState(null);

    useEffect(() => {
        fetch(endpointusuario + '/' + JSON.parse(sessionStorage.getItem('user')).userId, {
            method: 'get',
            headers: {
                'Accept': '*/*',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + JSON.parse(sessionStorage.getItem('user')).jwt
            }
        }).then((response) => response.json())
            .then((data) => { setDatoUsuario(data) })
    }, [endpointusuario]);

    console.log(datoUsuario);

    return (
        <>
            {(reserva !== null && datoUsuario !== null) && (
                <div className='contenedor-reserva'>
                    <div className='product-header'>
                        <div>
                            <h1 className='categoria-header'>{reserva.nombre}</h1>
                            <h1 className='nombre-header'>{reserva.nombre}</h1>
                        </div>
                        <Link to={`/productos/${id}`}> <img src={back} alt="Volver" /></Link>
                    </div>
                    <div className="detalle-reserva-container">
                        <div className="detalle-reserva-dateyform">
                            <div className="detalle-reserva-container-formulario">
                                <h1 className="detalle-reserva-encabezados">Completá tus datos</h1>
                                <form className='detalle-reserva-container-form'>
                                    <label for="nombre">Nombre</label>
                                    <label for="apellido">Apellido</label>
                                    <input type="text" id="nombre" value={datoUsuario.nombre}></input>
                                    <input type="text" id="apellido" value={datoUsuario.apellido}></input>
                                    <label for="correo">Correo Electrónico</label>
                                    <label for="ciudad">Ciudad</label>
                                    <input type="text" id="correo" value={datoUsuario.email}></input>
                                    <input type="text" id="ciudad"></input>
                                </form>
                            </div>

                            <div className="detalle-reserva-container-calendario">
                                <h1 className="detalle-reserva-encabezados">Seleccioná tu fecha de reserva</h1>
                                <div className='detalle-calendario'>
                                    <Calendar
                                        months={months}
                                        weekDays={weekDays}
                                        minDate={new Date()}
                                        numberOfMonths={2}
                                        mapDays={({ date }) => {
                                            let im = intervalosMapeados
                                            if (im?.includes(date.format("YYYY-MM-DD"))) return {
                                                disabled: true,
                                                style: { color: "#ccc" },
                                            }
                                        }}
                                        disableMonthPicker
                                        disableYearPicker
                                        format="DD/MM/YYYY"
                                        value={values}
                                        onChange={dateObjects => {
                                            setValues(dateObjects)
                                            setAllDates(getAllDatesInRange(dateObjects))
                                        }}
                                        range
                                        rangeHover
                                    /></div>
                            </div>
                        </div>

                        <div className="detalle-reserva-container-card">
                            <div className="detalle-reserva-flex">
                                <h1 className="detalle-reserva-texto">Detalle de la Reserva</h1>
                                <div className="detalle-reserva-producto">
                                    <img src={reserva.categoria.imagenUrl} alt={reserva.nombre}></img>
                                </div>
                            </div>
                            <div className="detalle-reserva-datos">
                                <div className='detalle-reserva-titular'>
                                    <h3 className="detalle-reserva-categoria">{reserva.categoria.titulo}</h3>
                                    <h1 className='detalle-reserva-nombre'>{reserva.nombre}</h1>
                                    <div className='detalle-reserva-stars'>
                                        <img className='card-data-stars' src={star} alt={'star'}></img>
                                        <img className='card-data-stars' src={star} alt={'star'}></img>
                                        <img className='card-data-stars' src={star} alt={'star'}></img>
                                        <img className='card-data-stars' src={star} alt={'star'}></img>
                                        <img className='card-data-stars' src={star} alt={'star'}></img>
                                    </div>
                                </div>
                                <p className='detalle-reserva-ubicacion'>{`${reserva.detalleUbicacion}, ${reserva.ubicacion}`}</p>
                                <hr></hr>
                                <div className="template-reservas-check-container">
                                    <p>Check in</p>
                                    <time>{values[0] === undefined ? "--/--/----" : values[0]?.toDate?.().toLocaleDateString()}</time>
                                </div>
                                <hr></hr>
                                <div className="template-reservas-check-container">
                                    <p>Check out</p>
                                    <time>{values[1] === undefined ? "--/--/----" : values[1]?.toDate?.().toLocaleDateString()}</time>
                                </div>
                                <hr></hr>
                                <button className="detalle-reserva-button" onClick={postReserva}>Confirmar reserva</button>
                            </div>
                        </div>
                    </div>
                    <>
                        <h1 className='titulo-caracteristicas'>Qué tenés que saber</h1>
                        <hr className='hr-caracteristicas'></hr>
                        <div className='caracteristicas'>
                            {reserva.politicas.map((politica) => (
                                <div>
                                    <h1>{politica.titulo}</h1>
                                    <span>{politica.descripcion}</span>
                                </div>
                            ))}

                        </div>
                    </>
                </div>
            )}
        </>
    )
}

export default memo(TemplateReservas);