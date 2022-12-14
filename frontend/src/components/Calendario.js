import React from 'react'
import { useState, useEffect } from 'react'
import { Calendar } from 'react-date-range';
import { useMediaQuery } from 'react-responsive'
import { es } from 'react-date-range/dist/locale';
import 'react-date-range/dist/styles.css'; // calendar main css file
import 'react-date-range/dist/theme/default.css'; // calendar theme css file
import '../Styles/Calendario.css'

const CalendarioMobile = (fechasADeshabilitar) => {

    const [date, setDate] = useState(null);
    const [disabledDates, setdisabledDates] = useState([])

    const isMobile = useMediaQuery({
        query: '(max-width: 575.98px)'
    })

    const monthsShown = (isMobile ? 1 : 2)

    useEffect(() => {
        setdisabledDates(fechasADeshabilitar.fechasADeshabilitar)
    }, [fechasADeshabilitar])

    return (
        <Calendar
            onChange={item => setDate(item)}
            weekdayDisplayFormat="EEEEE"
            direction='horizontal'
            months={monthsShown}
            weekStartsOn={0}
            disabledDates={disabledDates}
            date={date}
            fixedHeight={true}
            dragSelectionEnabled={false}
            showPreview={false}
            locale={es}
            showMonthAndYearPickers={false}
        />
    )
}

export default CalendarioMobile