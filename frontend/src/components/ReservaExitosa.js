import React from 'react'
import check from '../images/check.svg';
import { Link, } from "react-router-dom";
import '../Styles/ReservaExitosa.css'

const ReservaExitosa = () => {

  return (
    <section className="reserva-exitosa">

      <div>
      <img src={check} alt="Success" />
        <h2>¡Muchas gracias!</h2>
        <p>Su reserva se ha realizado con éxito</p>
        <Link to={`/`}> ok</Link>
        
      </div>

    

    </section>
  )
}
export default ReservaExitosa;