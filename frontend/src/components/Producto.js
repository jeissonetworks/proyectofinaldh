import { useState, memo, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import back from '../images/back.svg';
import mapa from '../images/mapa.svg';
import ubicacion from '../images/ubicacion.svg';
import Fechas from './Fechas.js';
import ImagenesProducto from './ImagenesProducto';
import Carrousel from './Carrousel';


const Producto = () => {

    const [abrirCarrousel, setAbrirCarrousel] = useState(false);
    const [producto, setProductos] = useState(null);
    const { id } = useParams();
    const endpoint = `${process.env.REACT_APP_SERVER_URL}/productos/${id}`

    useEffect(() => {
        const getData = async () => {
            await fetch(endpoint)
                .then((response) => response.json())
                .then((data) => {
                    setProductos(data)
                })
        };
        getData();
    }, [endpoint]);

    return (
        <>
            <div>
                {producto !== null && (

                    <div>
                        <div className='product-header'>
                            <div>
                                <h1 className='categoria-header'>{producto.categoria.titulo}</h1>
                                <h1 className='nombre-header'>{producto.nombre}</h1>
                            </div>
                            <Link to="/"><img src={back} alt="Volver" /></Link>
                        </div>
                        <div className='product-header-ubicacion'>
                            <div>
                                <img src={ubicacion} alt="Ubicacion" /><span className='ubicacion-header'>{producto.ubicacion}</span>

                                <span className='ubicacion-header'>{producto.detalleUbicacion}</span>
                            </div>
                            <div>
                                Muy Bueno
                                <h1>8</h1>
                            </div>
                        </div>


                        <div>
                            <ImagenesProducto arrayImagenes={producto.imagenes} estado={abrirCarrousel} cambiarEstado={setAbrirCarrousel} />
                        </div>
                        <div className='descripcion'>
                            <h1 className='titulo-descripcion'>{producto.tituloDescripcion}</h1>
                            <span className='product-descripcion'>{producto.descripcion}</span>

                        </div>
                        <h1 className='titulo-caracteristicas'>¿Qué ofrece este lugar?</h1>
                        <hr className='hr-caracteristicas'></hr>
                        <div className='caracteristicas'>
                            {producto.caracteristicas.map((caracteristica) => (
                                <div>
                                    <img src={caracteristica.icono} alt="Caracteristicas" />     {caracteristica.nombre}
                                </div>
                            ))}

                        </div>

                        <Fechas id={id} reservas={producto.reservas} />
                        <h1 className='titulo-caracteristicas'>¿Dónde vas a estar?</h1>
                        <hr className='hr-caracteristicas'></hr>
                        <div className='mapa'>
                            <h2>Buenos Aires, Argentina</h2>

                            <img src={mapa} alt="Mapa" />
                        </div>
                        <h1 className='titulo-caracteristicas'>Qué tenés que saber</h1>
                        <hr className='hr-caracteristicas'></hr>
                        <div className='caracteristicas'>
                            {producto.politicas.map((politica) => (
                                <div>
                                    <h1>{politica.titulo}</h1>
                                    <span>{politica.descripcion}</span>

                                </div>
                            ))}

                        </div>
                        <Carrousel imagenes={producto.imagenes} estado={abrirCarrousel} cambiarEstado={setAbrirCarrousel} />
                    </div>


                )}


            </div>
        </>
    )
}
export default memo(Producto);