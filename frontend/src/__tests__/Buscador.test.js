import { render, fireEvent, waitFor, screen } from "@testing-library/react";
import Buscador from '../components/Buscador';
import Login from '../components/Usuarios/Login';
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Buscador />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});

test("Si la Autenticación falla debe mostrar el error", () => {
    const {getByText, container } = render( <Router> <Login /> </Router> );

    const autenticarBtn = getByText(/Ingresar/i);

    fireEvent.click(autenticarBtn);
        
    expect(getByText('Por favor vuelva a intentarlo, sus credenciales son inválidas.')).toBeTruthy();
})
