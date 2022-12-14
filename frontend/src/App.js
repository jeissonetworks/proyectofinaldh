import Header from './components/encabezado/Header.js';
import Body from './components/Body.js';
import Login from './components/usuarios/Login.js';
import SignUp from './components/usuarios/SignUp.js';
import Footer from './components/Footer.js';
import Producto from './components/Producto.js';
import { BrowserRouter } from "react-router-dom";
import { Routes, Route,  } from "react-router-dom";
import './App.css';
import './Styles/Header.css';
import './Styles/Footer.css';
import './Styles/Categorias.css';
import './Styles/Listado.css';
import './Styles/Buscador.css';
import './Styles/Fechas.css';
import './Styles/Producto.css';
import TemplateReservas from './components/TemplateReservas.js';
import ReservaExitosa from './components/ReservaExitosa.js';
import Carrousel from './components/Carrousel.js';
import AdminProducto from './components/AdminProducto.js';
import ProductoCreado from './components/ProductoCreado.js';
// const user = JSON.parse(sessionStorage.getItem('user'));
// const isAdmin = !user || user.rolName === 'ROL_USER' ? false : user.rolName === 'ROL_ADMIN' ? true : false;

function App() {

  return (
    <div className="App">
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<Body />}></Route>
          <Route path="/login" element={<Login />}></Route>
          <Route path="/register" element={<SignUp />}></Route>
          <Route path="/carrousel" element={<Carrousel />}></Route>
          <Route path='/productos/:id' element={<Producto />}></Route>
          <Route path='/productos/:id/reserva' element={<TemplateReservas />}></Route>
          <Route path='/reservaexitosa' element={<ReservaExitosa />}></Route>
          <Route path='/administracion' element={<AdminProducto />}/>
          <Route path='/productocreado' element={<ProductoCreado />}></Route>
        </Routes>
      </BrowserRouter>
      <Footer />
    </div>
  );
}

export default App;