import { render, fireEvent, getByTestId } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import { toHaveStyle, prettyDOM } from '@testing-library/jest-dom'
import { BrowserRouter as Router } from 'react-router-dom';
import SignUp from "../components/Usuarios/SignUp";
import { getButtonUtilityClass } from "@mui/material";

let view = render(<Router>
    <SignUp />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});


test("Validación de correo incorrecto", () => {
    const { getByTestId, getByText } = render( <Router> <SignUp /> </Router> );

    const emailInput = getByTestId("email-usuario");
    
    userEvent.type(emailInput, '23');

    expect(emailInput.value).toBe('23');
    expect(getByText('El formato de correo no es válido.')).toHaveClass('message-error');

});
test("Validación de correo correcto", () => {
    const { getByTestId, getByText } = render( <Router> <SignUp /> </Router> );

    const emailInput = getByTestId("email-usuario");
    
    userEvent.type(emailInput, 'pepe@rot.com');

    expect(emailInput.value).toBe('pepe@rot.com');
    expect(getByText('El formato de correo no es válido.').getAttribute("class")).toMatch('');

})
