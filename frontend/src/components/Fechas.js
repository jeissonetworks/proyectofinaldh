import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom';
import 'react-date-range/dist/styles.css'; // main css file
import 'react-date-range/dist/theme/default.css'; // theme css file
import '../Styles/Fechas.css'
import CalendarioMobile from './Calendario';
import { eachDayOfInterval } from 'date-fns'

const Fechas = ({ id, reservas }) => {

    let navigate = useNavigate();
    const [fechaInicial, setFechaInicial] = useState();
    const [fechaFinal, setFechaFinal] = useState();
    const [intervalos, setIntervalos] = useState([]);

    const clickHandler = (e) => {
        if (sessionStorage.getItem("authenticated") === "true") {
            e.preventDefault();
            let path = `/productos/${id}/reserva`
            navigate(path)
        }
        else {
            e.preventDefault();
            navigate(`/login`)
        }
    }

    useEffect(() => {
        setFechaInicial(reservas.map(reserva => reserva.fechaInicial.toString()));
        setFechaFinal(reservas.map(reserva => reserva.fechaFinal.toString()));
    }, [reservas])

    useEffect(() => {
        async function getIntervalos() {
            setIntervalos([]);
            if (fechaInicial && fechaFinal)
                for (let i = 0; i < reservas.length; i++) {
                    const fi = reservas[i].fechaInicial;
                    const ff = reservas[i].fechaFinal;
                    setIntervalos(element => [...element, ...eachDayOfInterval({
                        start: new Date(fi),
                        end: new Date(ff)
                    })])
                }
        };
        getIntervalos()
    }, [fechaInicial, fechaFinal, reservas])

    return (
        <div className='fechas-bg'>
            <h1>Fechas Disponibles</h1>
            <div className="fechas-contenedor">
                <div className="fechas"><CalendarioMobile fechasADeshabilitar={intervalos}
                />
                </div>
                <div className="contenedor-reservas">
                    <h3>Agregá tus fechas de viaje para obtener precios exactos</h3>
                    <button onClick={clickHandler} className='fechas-boton-reserva'>Iniciar Reserva</button>
                </div>
            </div>
        </div>
    )
}

export default Fechas