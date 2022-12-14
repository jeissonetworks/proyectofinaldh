import React, { useState } from 'react';
import '../../Styles/Login.css';
import InputComponent from '../tags_personalizados/InputComponent';
import { Link, useNavigate } from "react-router-dom";
import Authenticate from './Authenticate'
import SaveSessionUser from './SaveSessionUser'

const Login = () => {
  
    const navigate = useNavigate();
    const [email, setEmail] = useState({campo: '', valido: null});
    const [password, setPassword] = useState({campo: '', valido: null});
    const [authenticated, setAuthenticated] = useState(sessionStorage.getItem(sessionStorage.getItem("authenticated")|| false));

    const expresiones = { 
		nombre: /^[a-zA-ZÀ-ÿ\s]$/, 
		password: /^.{6,16}$/, 
		correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    }

    function iniciarSesion(e){
        e.preventDefault();
        validarCredenciales(email, password);
    }

    function validarCredenciales(email, password){
        Authenticate(email.campo, password.campo).then( res => {
            if (res.jwt) {
                autenticar(res)
            }else{ 
                rechazarCredenciales()
            }
        } )
    }

    function autenticar(user){
        setAuthenticated(true)
        SaveSessionUser (true,user)
        navigate("/");
    }

    function rechazarCredenciales(){
        setAuthenticated(false)
        SaveSessionUser (false,null)
    }

    return (
        <main>
            <div className='form'>
                <h2>Iniciar sesión</h2>
                <form className = 'login' onSubmit={iniciarSesion}>
                <div className='login-input'>
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
                    <div className='login-input'>
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
                    <div className={(authenticated || authenticated === null) ? "form-login" : "form-login-error"}>
                        <p> Por favor vuelva a intentarlo, sus credenciales son inválidas.</p>
                    </div>
                    <div className="boton">
                        <button type="submit" className="boton-login">
                            Ingresar
                        </button>
                    </div>
                    <p>
                        ¿Aún no tenes cuenta?{" "}
                        <Link className='link' to="/register">Registrarse</Link>
                    </p>
                </form>
            </div>
        </main>
    )
};

export default Login;