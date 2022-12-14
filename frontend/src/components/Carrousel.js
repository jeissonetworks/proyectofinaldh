import React from 'react';
import "react-responsive-carousel/lib/styles/carousel.min.css"; // requires a loader
import { Carousel } from 'react-responsive-carousel';
import '../Styles/Carrousel.css';

const Carrousel = ({imagenes, estado, cambiarEstado}) => {


  const imagenesCarrousel = imagenes
  .map((hotel) =>
            
           <div><img src={hotel.url} alt={hotel.titulo} key={hotel.id}></img></div>
        
    );

  return (
    <>
    {estado &&
    <div className='contenedor-carrousel'>
        <div className='imagenes-carrousel'>
   
        <Carousel dynamicHeight infiniteLoop interval={3000} autoPlay>
               {imagenesCarrousel}
            </Carousel>
            </div>
            <button className='cerrarCarrousel' onClick={()=>cambiarEstado(!estado)}>X</button>
            </div>
    }
    </>
  )
  
}
<link rel="stylesheet" href="<NODE_MODULES_FOLDER>/react-responsive-carousel/lib/styles/carousel.min.css"/>
export default Carrousel

// Don't forget to include the css in your page

// Using webpack or parcel with a style loader
// import styles from 'react-responsive-carousel/lib/styles/carousel.min.css';

// Using html tag: