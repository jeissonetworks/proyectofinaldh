import React from 'react'
import Card from './Card';
import axios from 'axios';
import { useState, useEffect } from 'react';

const Listado = ({ palabraFiltro, fechasAFiltrar, ciudadAFiltrar }) => {

    const [productArray, setProductArray] = useState([]);
    const url = process.env.REACT_APP_SERVER_URL + '/productos'
    const urlCiudadYFechas = process.env.REACT_APP_SERVER_URL + `/productos/reservas/${ciudadAFiltrar}/${fechasAFiltrar[0]?.toString().replace(/\//g, "-")}/${fechasAFiltrar[1]?.toString().replace(/\//g, "-")}`
    const urlFechas = process.env.REACT_APP_SERVER_URL + `/productos/reservas/${fechasAFiltrar[0]?.toString().replace(/\//g, "-")}/${fechasAFiltrar[1]?.toString().replace(/\//g, "-")}`

    useEffect(() => {
        axios.get(url)
            .then(response => {
                if (palabraFiltro === '' && fechasAFiltrar.length === 0) {
                    setProductArray(response.data)
                }
                else if (palabraFiltro !== '' && fechasAFiltrar.length > 0) {
                    axios.get(urlCiudadYFechas)
                        .then(response => {
                            setProductArray(response.data)
                        })
                }
                else if (palabraFiltro === '' && fechasAFiltrar.length > 0) {
                    axios.get(urlFechas)
                        .then(response => {
                            setProductArray(response.data)
                        })
                }
                else {
                    setProductArray(response.data.filter(article => article.categoria.titulo === palabraFiltro || article.ciudad.ciudad === palabraFiltro));
                }
            })
    }, [palabraFiltro, fechasAFiltrar, ciudadAFiltrar, url, urlCiudadYFechas, urlFechas]);

    const listadoHoteles = productArray.map((hotel) =>
        <Card
            key={hotel.id}
            id={hotel.id}
            img={hotel.imagenes[0].url}
            categoria={hotel.categoria.titulo}
            nombre={hotel.nombre}
            ubicacion={hotel.ubicacion}
            descripcion={hotel.descripcion}
        />
    );

    return (
        <div className='listado'>
            <h1>Recomendaciones</h1>
            {listadoHoteles}
        </div>
    )
}

export default Listado