import React from 'react'
import star from '../images/star.svg'
import wifi from '../images/wifi.svg'
import swim from '../images/swimmer.svg'
import { useNavigate } from 'react-router-dom'

const Card = (props) => {
    let navigate = useNavigate();
    const routeChange = () => {
        let path = `/productos/${props.id}`;
        navigate(path);

    }

    return (


        <div className='card-container'>
            <div className='card-container-img'>
                <img key={props.id} src={props.img} alt={props.nombre}></img>
            </div>
            <div className='card-data'>
                <div className='card-data-content'>
                    <div className='card-data-1st-block'>
                        <div className='card-data-1st-block-title'>
                            <div className='card-data-categoria-and-stars'>
                                <h4 className='card-data-categoria'>{props.categoria.toUpperCase()}</h4>
                                <img className='card-data-stars' src={star} alt={'star'}></img>
                                <img className='card-data-stars' src={star} alt={'star'}></img>
                                <img className='card-data-stars' src={star} alt={'star'}></img>
                                <img className='card-data-stars' src={star} alt={'star'}></img>
                                <img className='card-data-stars' src={star} alt={'star'}></img>
                            </div>
                            <div className='card-data-nombre'>{props.nombre}</div>
                        </div>
                        <div className='card-data-1st-block-puntaje'>
                            <span className='puntaje'>8</span>
                            <span className='calificacion'>Muy Bueno</span>
                        </div>
                    </div>
                    <div className='card-data-ubicacion'>A 940 m del centro <span>MOSTRAR EN EL MAPA</span></div>
                    <div className='card-data-services'>
                        <img className='card-data-wifi' src={wifi} alt={'wifi'}></img>
                        <img className='card-data-swim' src={swim} alt={'swim'}></img>
                    </div>
                    <p className='card-data-descripcion'>{props.descripcion}</p>
                    <button type="submit" onClick={routeChange} className='card-data-boton'>Ver más</button>
                </div>
            </div>
        </div>
    )
}

export default Card