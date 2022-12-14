import React, { useState } from 'react';
import '../../Styles/SignUp.css';
import InputComponent from '../tags_personalizados/InputComponent';
import { Link, useNavigate } from "react-router-dom";
import Authenticate from './Authenticate'
import SaveSessionUser from './SaveSessionUser'

const SignUp = () => {

    const navigate = useNavigate();
    const endpoint = `${process.env.REACT_APP_SERVER_URL}/usuarios`
    const [nombre, setNombre] = useState({ campo: '', valido: null });
    const [apellido, setApellido] = useState({ campo: '', valido: null });
    const [email, setEmail] = useState({ campo: '', valido: null });
    const [password, setPassword] = useState({ campo: '', valido: null });
    const [password2, setPassword2] = useState({ campo: '', valido: null });
    const [formularioValido, setFormularioValido] = useState(null);
    const [errorMesage, seterrorMesage] = useState('Por favor diligencie el formulario correctamente');

    const expresiones = {
        nombre: /^[a-zA-ZÀ-ÿ\s]{1,20}$/,
        password: /^.{6,16}$/,
        correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    }

    const enviarFormulario = (e) => {
        e.preventDefault();

        if (password.campo !== password2.campo) {
            setPassword2({ ...password2, valido: "false" })
            return
        }

        if (nombre.valido &&
            apellido.valido &&
            password.valido &&
            password2.valido &&
            email.valido) {

            crearUsuario();
            
            setFormularioValido(true);
        }else {
            seterrorMesage('Por favor diligencie el formulario correctamente')
            setFormularioValido(false);
        }
    }

    function crearUsuario(){
        fetch(endpoint, {
            method: 'post',
            headers: {
                        'Accept': '*/*',
                        'Content-Type': 'application/json'
            },
            body: JSON.stringify( {
                id: 0,
                nombre: nombre.campo,
                apellido: apellido.campo,
                contrasenia: password.campo,
                email: email.campo,
                roles: {
                    "id": 1,
                }
            })
        }).then( res => {
            return res.status === 201
        }).then( res => {
            if (res) {
                Authenticate(email.campo, password.campo).then( res => {
                    if (res.jwt) {
                        SaveSessionUser (true,res)
                        navigate("/");
                    }else{ 
                        SaveSessionUser (false,null)
                        navigate("/");
                    }
                } )
            }else{ 
                seterrorMesage('Lamentablemente no ha podido registrarse. Por favor intente más tarde')
                setFormularioValido(false);
            }
        } )
    }


    return (
        <main>
            <div className='form'>
                <h2>Crear cuenta</h2>
                <form className='sign-up' onSubmit={enviarFormulario}>
                    <div className="register-input" id="fullname">
                        <div className='sign-up-input' id='full-name'>
                            <InputComponent
                                estado={nombre}
                                cambiarEstado={setNombre}
                                label="Nombre"
                                id='nombre-usuario'
                                name='nombre-usuario'
                                type="text"
                                expresionRegular={expresiones.nombre}
                                messageError="El nombre solo debe contener letras y espacios."
                            />
                        </div>
                        <div className='sign-up-input' id='full-name'>
                            <InputComponent
                                estado={apellido}
                                cambiarEstado={setApellido}
                                label="Apellido"
                                id='apellido-usuario'
                                name='apellido-usuario'
                                type="text"
                                expresionRegular={expresiones.nombre}
                                messageError="El apellido solo debe contener letras y espacios."
                            />
                        </div>
                    </div>
                    <div className='sign-up-input'>
                        <InputComponent
                            estado={email}
                            cambiarEstado={setEmail}
                            label="Correo electrónico"
                            id='email-usuario'
                            name='email-usuario'
                            type="email"
                            expresionRegular={expresiones.correo}
                            messageError="El formato de correo no es válido."
                        />
                    </div>
                    <div className='sign-up-input'>
                        <InputComponent
                            estado={password}
                            cambiarEstado={setPassword}
                            label="Contraseña"
                            id='contrasenia-usuario'
                            name='contrasenia-usuario'
                            type="password"
                            expresionRegular={expresiones.password}
                            messageError="La contraseña debe tener de 6 a 16 caracteres."
                        />
                    </div>
                    <div className='sign-up-input'>
                        <InputComponent
                            estado={password2}
                            cambiarEstado={setPassword2}
                            label="Confirmar contraseña"
                            id='confirmar-contrasenia-usuario'
                            name='confirmar-contrasenia-usuario'
                            type="password"
                            expresionRegular={new RegExp('^' + password.campo + '$')}
                            messageError="Ambas contraseñas deben ser iguales."
                        />
                    </div>
                    <div
              className={
                (formularioValido || formularioValido===null) ? "form-sign-up" : "form-sign-up-error"
              }
            >
              <p> {errorMesage} </p>
            </div>
                    <div className="boton">
                        <button type="submit" className="boton-sign-up">
                            Crear cuenta
                        </button>
                    </div>
                    <p>
                        ¿Ya tenes una cuenta?{" "}
                        <Link className='link' to="/login">Iniciar sesión</Link>
                    </p>
                </form>
            </div>
        </main>
    )
};

export default SignUp;