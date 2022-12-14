import React from 'react'
import '../Styles/ImagenesProducto.css';

const ImagenesProducto = ({ arrayImagenes, estado, cambiarEstado }) => {

  console.log(arrayImagenes)

  const imagenGrande =
    <img className='imagen-container-grande' src={arrayImagenes[0].url} alt={arrayImagenes[0].titulo} key={arrayImagenes[0].id}></img>;

  const imagenesPequeñas = arrayImagenes
    .slice(1, 5)
    .map((hotel) =>

      <img className='imagen-container-pequeña' src={hotel.url} alt={hotel.titulo} key={hotel.id}></img>

    );

  return (
    <div className='galeria'>
      <div className='contenedor-imagenes'>{imagenGrande}</div>
      <div className='contenedor-imagenes'>{imagenesPequeñas}</div>
      <span onClick={() => cambiarEstado(!estado)}>ver mas</span>
    </div>


  )
}

export default ImagenesProducto