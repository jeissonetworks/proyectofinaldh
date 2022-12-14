import React, { useRef } from 'react'
import { useState, useEffect } from "react"
import '../Styles/CalendarioBuscador.css'
import DatePicker from 'react-multi-date-picker'
import { useMediaQuery } from 'react-responsive'

const Buscador = ({ palabraFiltrar, fechasAFiltrar, ciudadAFiltrar }) => {
    const [ciudadId, setCiudadId] = useState();
    const [dataCiudades, setDataCiudades] = useState([]);
    const [filtroCiudad, setFiltroCiudad] = useState("");
    const [fechasDatePicker, setFechasDatePicker] = useState([]);
    const isMobile = useMediaQuery({
        query: '(max-width: 575.98px)'
    })
    const monthsShown = (isMobile ? 1 : 2)

    const url = process.env.REACT_APP_SERVER_URL + '/ciudades';

    useEffect(() => {
        fetch(url)
            .then((response) => response.json())
            .then((cities) => { setDataCiudades(cities) })
    }, [url]);

    const ciudades = dataCiudades.map((info) =>
        <option key={info.id} data-id={info.id} value={info.ciudad} >{info.ciudad}</option>
    )

    const datePickerRef = useRef()

    const buttonHandler = (e) => {
        e.preventDefault();
        datePickerRef.current.closeCalendar()
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

    return (
        <div className="App-search">
            <h1>Busca ofertas en hoteles, casas y mucho más</h1>
            <form>
                <select value={filtroCiudad} onChange={(event) => { setFiltroCiudad(event.target.value); setCiudadId(event.target[event.target.selectedIndex].getAttribute("data-id")) }}>
                    <option hidden defaultValue={'¿A dónde vamos?'}>¿A dónde vamos?</option>
                    {ciudades}
                </select>
                <div className='datepicker-wrapper'>
                    <DatePicker
                        ref={datePickerRef}
                        months={months}
                        weekDays={weekDays}
                        placeholder='Check in - Check Out'
                        numberOfMonths={monthsShown}
                        value={fechasDatePicker}
                        onChange={setFechasDatePicker}
                        range
                        rangeHover
                        arrow={true}
                        calendarPosition="bottom-center"
                        hideOnScroll={true}
                        hideYear={true}
                    >
                        <button
                            onClick={buttonHandler}
                            className="datepicker-search-button">
                            Aplicar
                        </button>
                    </DatePicker>
                </div>
                <button type='button' className="search-button" onClick={() => { palabraFiltrar(filtroCiudad); fechasAFiltrar(fechasDatePicker); ciudadAFiltrar(ciudadId) }}>Buscar</button>
            </form>
        </div >
    )
}

export default Buscador