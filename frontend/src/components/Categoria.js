import React from 'react'
// import hoteles from '../json/hoteles.json'
import Card from './Card';
import axios from 'axios';
import { useState, useEffect } from 'react';
// import Categorias from './Categorias';

const Categoria = () => {

    const url = process.env.REACT_APP_SERVER_URL + '/productos'
    const [productArray, setProductArray] = useState([]);

    useEffect(() => {
        axios.get(url)
            .then(response => setProductArray(response.data))
    }, []);

    const listadoHoteles = productArray.map((hotel) =>
        <Card
            id={hotel.id}
            img={hotel.categoria.imagenUrl}
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

export default Categoria