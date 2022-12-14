import React from 'react'
import check from '../images/check.svg';
import { Link, } from "react-router-dom";
import '../Styles/ReservaExitosa.css'

const ProductoCreado = () => {

  return (
    <section className="reserva-exitosa">

      <div>
      <img src={check} alt="Success" />
        
        <p>Tu propiedad se ha creado con éxito.</p>
        <Link to={`/`}> volver</Link>
        
      </div>

    

    </section>
  )
}
export default ProductoCreado;