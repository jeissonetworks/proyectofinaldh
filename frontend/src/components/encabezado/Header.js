import React from 'react'
import logo from '../../images/logo.svg';
import menu from '../../images/menu.svg';
import fb from '../../images/fb.svg';
import lin from '../../images/lin.svg';
import tw from '../../images/tw.svg';
import ig from '../../images/ig.svg';
import { Link, useLocation } from "react-router-dom";
import { useState } from 'react'
import { HeaderUserSection } from './HeaderUserSection';

const Header = () => {
  const [isNavExpanded, setIsNavExpanded] = useState(false)

  let location = useLocation();
  React.useEffect(() => {
  }, [location]);

  

  return (
    <header className="App-header">

      <div className="App-logo">
        <Link to="/"><img src={logo} alt="Digital Booking" /> </Link>
        <p><Link to="/">Sentite como en tu hogar</Link></p>
      </div>

      <HeaderUserSection/>

      <nav className="navigation">

        <button
          className="hamburger"
          onClick={() => {
            setIsNavExpanded(!isNavExpanded);
          }}
        >
          {<img src={menu} alt="Menú" />}
        </button>
        {
          <div
            className={
              isNavExpanded ? "navigation-menu expanded" : "navigation-menu "
            }
          >

            <ul className={
              isNavExpanded ? "slide-in-right" : "slide-out-right"
            }>
              <button
                className="close"
                onClick={() => {
                  setIsNavExpanded(!isNavExpanded);
                }}
              >
                {<h3>X</h3>}
              </button>
              <p>MENÚ</p>
              <div className='menucel'>
                <li>
                  <Link className={location.pathname !== "/register" ? "" : "hidden"} to="/register" onClick={() => {
                  setIsNavExpanded(!isNavExpanded);
                }}>Crear cuenta</Link>
                </li>
                <hr className={location.pathname !== "/" ? "hidden" : "" } ></hr>
                <li>
                  <Link className={location.pathname !== "/login" ? "" : "hidden"} to="/login" onClick={() => {
                  setIsNavExpanded(!isNavExpanded);
                }}>Iniciar sesión</Link>
                </li>

                <div className="App-social-m">
                  <img src={fb} alt="Facebook" />
                  <img src={lin} alt="Linkedin" />
                  <img src={tw} alt="Twitter" />
                  <img src={ig} alt="Instagram" />
                </div>

              </div>
            </ul>


          </div>

        }
      </nav>

    </header>
  )
}
export default Header;
