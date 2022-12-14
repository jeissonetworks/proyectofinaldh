import React from 'react'
import Box from './Box'
import { useState, useEffect } from "react"

const Categorias = ({ palabraFiltrar }) => {

    const [categorias, setCategorias] = useState([]);
    const url = process.env.REACT_APP_SERVER_URL + '/categorias';

    useEffect(() => {
        fetch(url)
            .then((response) => response.json())
            .then((categories) => { setCategorias(categories) });
    }, []);

    const filterCategory = (category) => {
        palabraFiltrar(category)

    }

    const listadoCategorias = categorias.map((categoria) =>
        <Box
            key={categoria.id}
            imgUrl={categoria.imagenUrl}
            nombre={categoria.titulo}
            filterCategory={filterCategory}
        />

    )

    return (
        <div className='categorias'>
            <h2>Buscar por tipo de alojamiento</h2>
            {listadoCategorias}
        </div>
    )
}

export default Categorias