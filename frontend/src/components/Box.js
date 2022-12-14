import React from 'react'

const Box = (props) => {

    return (
        <div className='box-container'
            type='button'
            onClick={() => props.filterCategory(props.nombre)}
            key={props.id}>
            <img src={props.imgUrl} alt={props.categoria}></img>
            <div className='box-data'>
                <p className='box-data-categoria'>{props.nombre}</p>
                <p className='box-data-resultados'>807.105 Hoteles</p>
            </div>
        </div>
    )
}

export default Box