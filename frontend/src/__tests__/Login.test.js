import { render, fireEvent, waitFor, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import { toHaveStyle } from '@testing-library/jest-dom'
import Login from '../components/Usuarios/Login';
import { BrowserRouter as Router } from 'react-router-dom';


test("Si la Autenticación falla debe mostrar el error", () => {
    const {getByText, container } = render( <Router> <Login /> </Router> );

    const autenticarBtn = getByText(/Ingresar/i);

    fireEvent.click(autenticarBtn);
        
    expect(getByText('Por favor vuelva a intentarlo, sus credenciales son inválidas.')).toBeTruthy();
})

test("Validación de correo incorrecto", () => {
    const { getByTestId, getByText } = render( <Router> <Login /> </Router> );

    const emailInput = getByTestId("email-usuario");
    
    userEvent.type(emailInput, '23');

    expect(emailInput.value).toBe('23');
    expect(getByText('El formato de correo no es válido.')).toHaveClass('message-error');

})

test("Validación de correo correcto", () => {
    const { getByTestId, getByText } = render( <Router> <Login /> </Router> );

    const emailInput = getByTestId("email-usuario");
    
    userEvent.type(emailInput, 'pepe@rot.com');

    expect(emailInput.value).toBe('pepe@rot.com');
    expect(getByText('El formato de correo no es válido.').getAttribute("class")).toMatch('');

})