import React from 'react'; import { useState, useEffect } from "react"
import '../Styles/CalendarioBuscador.css'
import { Link } from 'react-router-dom';
import back from '../images/back.svg';
import { useNavigate } from 'react-router-dom'
import { TextField, FormGroup, Checkbox, FormControlLabel, FormControl, InputLabel, Select, MenuItem, TextareaAutosize, Box, Typography, Modal, } from '@mui/material';


const style = {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    width: '55%',
    bgcolor: '#fff',
    border: '1px solid #000',
    boxShadow: 24,
    p: 4,
};
const defaultState = {
    url: ""
};

function Row({ onChange, onRemove, url }) {

    return (
        <div className='imag'>
            <input className='inputurl' required
                value={url}
                onChange={e => onChange("url", e.target.value)}
                placeholder="Insertar https://"
            />

            <button className='eliminar' onClick={onRemove}>x</button>
        </div>
    );
}
// console.log(JSON.parse(sessionStorage.getItem('user')).jwt);
const AdminProducto = () => {
    const [open, setOpen] = React.useState(false);
    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    const endpointproductos = `${process.env.REACT_APP_SERVER_URL}/productos`

    function crearProducto(e) {

        e.preventDefault();

        // const caracteristicaschecked = []
        // Object.keys(Caracteristicas).forEach(key => {
        //     if (Caracteristicas[key]) {
        //         caracteristicaschecked.push({ id: key })
        //     }
        // })

        console.log(ProductName);
        console.log(IdCategoria);
        console.log(Direccion);
        console.log(IdCiudad);
        console.log(Descripcion);
        console.log(Caracteristicas);
        console.log(Normas);
        console.log(Salud);
        console.log(Politicas);
        console.log(rows);
        console.log(JSON.stringify({

            caracteristicas: Caracteristicas,
            categoria: {

                id: IdCategoria,
            },
            ciudad: {
                id: IdCiudad,
            },

            descripcion: Descripcion,
            id: 0,
            imagenes: rows,

            nombre: ProductName,
            politicas: [
                {
                    titulo: "Normas de la casa",
                    descripcion: Normas
                },
                {
                    titulo: "Salud y seguridad",
                    descripcion: Salud
                },
                {
                    titulo: "Política de cancelación",
                    descripcion: Politicas
                },
            ],


            ubicacion: Direccion
        }));
      
        fetch(endpointproductos, {
            method: 'post',
            headers: {
                'Accept': '*/*',
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + JSON.parse(sessionStorage.getItem('user')).jwt
            },
            
            body: JSON.stringify({

                caracteristicas: Caracteristicas,
                categoria: {

                    id: IdCategoria,
                },
                ciudad: {
                    id: IdCiudad,
                },

                descripcion: Descripcion,
                id: 0,
                imagenes: rows,

                nombre: ProductName,
                politicas: [
                    {
                        titulo: "Normas de la casa",
                        descripcion: Normas
                    },
                    {
                        titulo: "Salud y seguridad",
                        descripcion: Salud
                    },
                    {
                        titulo: "Política de cancelación",
                        descripcion: Politicas
                    },
                ],


                ubicacion: Direccion
            })
        }).then(res => {
            return res.status === 200
        }).then(res => {
            if (res) {
                navigate("/productocreado");
            } else {
                handleOpen();

            }
        })
    }

    let navigate = useNavigate();
    useEffect(() => {
        const user = JSON.parse(sessionStorage.getItem('user'));
        const isAdmin = !user || user.rolName === 'ROL_USER' ? false : user.rolName === 'ROL_ADMIN' ? true : false;

        if (!isAdmin) {
            let path = `/`;
            navigate(path);
        }

    },);


    // // let navigate = useNavigate();
    // const routeChange = () => {
    //     // let path = `/productocreado`;
    //     // navigate(path);
    //     console.log(ProductName);
    //     console.log(IdCategoria);
    //     console.log(Direccion);
    //     console.log(IdCiudad);
    //     console.log(Descripcion);
    //     console.log(Normas);
    //     console.log(Salud);
    //     console.log(Politicas);
    //     console.log(rows);

    // }


    const [rows, setRows] = useState([defaultState]);


    const handleOnChange = (index, name, value) => {
        const copyRows = [...rows];
        copyRows[index] = {
            ...copyRows[index],
            [name]: value
        };
        setRows(copyRows);
    };

    const handleOnAdd = (e) => {
        e.preventDefault();
        setRows(rows.concat(defaultState));
    };

    const handleOnRemove = index => {
        const copyRows = [...rows];
        copyRows.splice(index, 1);
        setRows(copyRows);
    };

    const [data, setData] = useState([]);
    const urlciudades = process.env.REACT_APP_SERVER_URL + '/ciudades';
    useEffect(() => {

        fetch(urlciudades)
            .then((response) => response.json())
            .then((cities) => { setData(cities) });
    }, [urlciudades]);
    const dataJson = data.map((info) =>

        <MenuItem required value={info.id}>{info.ciudad}</MenuItem>
    )


    const [categorias, setCategorias] = useState([]);
    const urlcategorias = process.env.REACT_APP_SERVER_URL + '/categorias';
    useEffect(() => {
        fetch(urlcategorias)
            .then((response) => response.json())
            .then((categorias) => { setCategorias(categorias) });
    }, [urlcategorias]);
    const dataJsoncategorias = categorias.map((info) =>

        <MenuItem required value={info.id}>{info.titulo}</MenuItem>
    )

    const [detalles, setDetalles] = useState([]);
    const urldetalles = process.env.REACT_APP_SERVER_URL + '/caracteristicas';
    useEffect(() => {
        fetch(urldetalles)
            .then((response) => response.json())
            .then((detalles) => { setDetalles(detalles) });
    }, [urldetalles]);

    const handleChange = (event) => {
        let found = Caracteristicas.find(caracteristica => caracteristica.id === event.target.value)
        if (!found && event.target.checked) {
            setCaracteristicas([...Caracteristicas, { id: event.target.value }])
        } else if (found && !event.target.checked) {
            let aux = Caracteristicas.filter(caracteristica => caracteristica.id !== event.target.value)
            setCaracteristicas(aux)
        }

    };

    const dataJsondetalles = detalles.map((info) =>

        <div className='w30'>
            <img src={info.icono} alt="Caracteristicas" />
            <FormControlLabel labelPlacement="start" control={<Checkbox value={info.id} onChange={handleChange} />} label={info.nombre} />
        </div>
    )

    
    const [ProductName, setProductName] = useState('');
    const [IdCategoria, setIdCategoria] = useState();
    const [Direccion, setDireccion] = useState('');
    const [IdCiudad, setIdCiudad] = useState();
    const [Descripcion, setDescripcion] = useState('');
    const [Caracteristicas, setCaracteristicas] = useState([]);
    const [Normas, setNormas] = useState('');
    const [Salud, setSalud] = useState('');
    const [Politicas, setPoliticas] = useState('');

    // const caracteristicas = Caracteristicas.map(id =>({id}))
    // console.log(Caracteristicas.map(id =>({id})));

    return (
        <div >

            <div className='product-header'>
                <div>
                    <h1>Administración</h1>
                </div>
                <Link to="/"><img src={back} alt="Volver" /></Link>
            </div>

            <div className='bodyform'>
                <h1>Crear propiedad</h1>
                <div className='formproducto'>
                    <form className='w100' onSubmit={crearProducto}>


                        <div className='w50'>
                            <h4>Nombre de la propiedad</h4>
                            <TextField fullWidth required value={ProductName} onChange={(value) => setProductName(value.target.value)} id="outlined-basic" label="Nombre de la propiedad" variant="outlined" />
                        </div>
                        <div className='w50'>
                            <h4>Categoria</h4>
                            <FormControl fullWidth>
                                <InputLabel id="categoria">Categoria</InputLabel>
                                <Select required
                                    defaultValue=""
                                    labelId="categoria"
                                    id="categoria"
                                    label="Categoria"
                                    onChange={(value) => setIdCategoria(value.target.value)}
                                >
                                    {dataJsoncategorias}
                                </Select>
                            </FormControl>
                        </div>
                        <div className='w50'>
                            <h4>Direccion</h4>
                            <TextField fullWidth required value={Direccion} onChange={(value) => setDireccion(value.target.value)} id="outlined-basic" label="Dirección" variant="outlined" />

                        </div>
                        <div className='w50'>
                            <h4>Ciudad</h4>
                            <FormControl fullWidth>
                                <InputLabel id="ciudad">Ciudad</InputLabel>
                                <Select required
                                    defaultValue=""
                                    labelId="ciudad"
                                    id="ciudad"
                                    label="ciudad"
                                    onChange={(value) => setIdCiudad(value.target.value)}
                                >
                                    {dataJson}
                                </Select>
                            </FormControl>
                        </div>

                        <div className='w100'>
                            <h4>Descripción</h4>
                            <TextareaAutosize required
                                aria-label="minimum height"
                                minRows={8}
                                placeholder="Escribir aqui"
                                style={{ width: 100 }}
                                value={Descripcion} onChange={(value) => setDescripcion(value.target.value)}
                            />
                        </div>

                        <div className='w100 imag'>
                            <h3>Caracteristicas</h3>
                            <FormGroup>
                                {dataJsondetalles}


                            </FormGroup>
                        </div>
                        <h3>Políticas del producto</h3>
                        <div className='w100 som'>

                            <div className='w30'>
                                <h4>Normas de la Casa</h4>
                                <h5>Descripción</h5>
                                <TextareaAutosize required
                                    aria-label="minimum height"
                                    minRows={10}
                                    placeholder="Escribir aqui"
                                    style={{ width: 100 }}
                                    value={Normas} onChange={(value) => setNormas(value.target.value)}
                                />
                            </div>
                            <div className='w30'>
                                <h4>Salud y seguridad</h4>
                                <h5>Descripción</h5>
                                <TextareaAutosize required
                                    aria-label="minimum height"
                                    minRows={10}
                                    placeholder="Escribir aqui"
                                    style={{ width: 100 }}
                                    value={Salud} onChange={(value) => setSalud(value.target.value)}
                                />
                            </div>
                            <div className='w30'>
                                <h4>Política de cancelación</h4>
                                <h5>Descripción</h5>
                                <TextareaAutosize required
                                    aria-label="minimum height"
                                    minRows={10}
                                    placeholder="Escribir aqui"
                                    style={{ width: 100 }}
                                    value={Politicas} onChange={(value) => setPoliticas(value.target.value)}
                                />
                            </div>
                        </div>

                        <div>
                            <h3>Cargar Imágenes</h3>
                            <div>
                                {rows.map((row, index) => (
                                    <Row
                                        {...row}
                                        onChange={(name, value) => handleOnChange(index, name, value)}
                                        onRemove={() => handleOnRemove(index)}
                                        key={index}

                                    />

                                ))}
                                <div className='imag'>
                                    <input disabled className='inputurl'
                                        placeholder="Insertar https://"
                                    />

                                    <button className='agregar' variant="contained" onClick={handleOnAdd}>+</button>
                                </div>

                            </div>


                        </div>


                        {/* <button className='crear'  variant="contained">Crear</button> */}
                        <button className='crear' type="submit" variant="contained">Crear</button>
                    </form >

                    <Modal
                        open={open}
                        onClose={handleClose}
                        aria-labelledby="modal-modal-title"
                        aria-describedby="modal-modal-description"
                    >
                        <Box sx={style}>

                            <Typography id="modal-modal-description" sx={{ mt: 2 }}>
                                Lamentablemente el producto no ha podido crearse. Por favor intente más tarde.
                            </Typography>
                        </Box>
                    </Modal>
                    {/* <Button onClick={handleOpen}>Open modal</Button> */}
                </div>
            </div>
        </div >
    )

}

export default AdminProducto