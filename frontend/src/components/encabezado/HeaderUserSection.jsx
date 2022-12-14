import React from 'react'
import { Link, useLocation } from "react-router-dom";
import '../../Styles/HeaderUserSection.css';
import { useNavigate } from "react-router-dom";

function initialsName(fullName) {
    const names = fullName.split(' ');
    let initials = names[0].substring(0, 1).toUpperCase();
    if (names.length > 1) {
        initials += names[names.length - 1].substring(0, 1).toUpperCase();
    }
    return initials;
}

const HeaderUserSection = () => {
    const navigate = useNavigate();
    const isLoggedIn = sessionStorage.getItem('authenticated') == null ? null : sessionStorage.getItem('authenticated') === 'false' ? false : true;
    const user = JSON.parse(sessionStorage.getItem('user'));
    const isAdmin = !user || user.rolName === 'ROL_USER' ? false : user.rolName === 'ROL_ADMIN' ? true : false;
    let location = useLocation();
    React.useEffect(() => { }, [location]);

    function logout() {
        sessionStorage.clear();
        navigate("/");
    }
   
// console.log(isAdmin);
    let userHeader;

    if (isLoggedIn) {
        userHeader = <div className="User-Card">

            <div className="Circle">{initialsName(user.name)}</div>
            <p>Hola,<br /><span>{user.name}</span></p>
            <div className="logout"><p onClick={logout}>x</p></div>
        </div>

    } else {
        userHeader =
            <React.Fragment>
                <Link className={location.pathname !== "/register" ? "" : "hidden"} to="/register">Crear cuenta</Link>
                <Link className={location.pathname !== "/login" ? "" : "hidden"} to="/login">Iniciar sesión</Link>
            </React.Fragment>
            ;

    }
    let userAdmin;
    if (isAdmin) {
        userAdmin =  <div className="linkadmin"><Link  to="/administracion">Administración</Link></div>
    } else {
        

    }
    return (
        <div className="App-login">
            {userAdmin}
            {userHeader}
        </div>
    )
}
export { HeaderUserSection, initialsName };