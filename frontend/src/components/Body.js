import React, { useState } from 'react'
import Listado from './Listado';
import Categorias from './Categorias'
import Buscador from './Buscador'

const Body = () => {

  const [palabraFiltro, setPalabraFiltro] = useState("");
  const [fechasReserva, setFechasReserva] = useState([]);
  const [ciudadID, setCiudadID] = useState("");

  const palabraFiltrar = (palabraFiltrar) => {
    setPalabraFiltro(palabraFiltrar)
  }

  const fechasAFiltrar = (arrayFechas) => {
    setFechasReserva(arrayFechas)
  }

  const ciudadAFiltrar = (ciudadID) => {
    setCiudadID(ciudadID)
  }

  return (
    <section className="App-body">
      <Buscador palabraFiltrar={palabraFiltrar} fechasAFiltrar={fechasAFiltrar} ciudadAFiltrar={ciudadAFiltrar} />
      <Categorias palabraFiltrar={palabraFiltrar} />
      <Listado palabraFiltro={palabraFiltro} fechasAFiltrar={fechasReserva} ciudadAFiltrar={ciudadID} />
    </section>
  )
}
export default Body;