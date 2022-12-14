import { HeaderUserSection, initialsName } from '../components/encabezado/HeaderUserSection';
import { render, fireEvent, waitFor, screen } from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';


test('Validación de la función que retorna las iniciales de un nombre', () => {
    const initials = initialsName('Jeisson López')
    expect(initials).toBe('JL')
})

test('Validación de la función que retorna las iniciales de un nombre sin appelidos', () => {
    const initials = initialsName('Jeisson')
    expect(initials).toBe('J')
})

test('Validación de la función que retorna las iniciales de el valor del nombre vacío', () => {
    const initials = initialsName('')
    expect(initials).toBe('')
})

test("Renderizar 'Crear cuenta' e 'Iniciar sesión' cuando el usuario no esta logueado", () => {
    const {getByText, container } = render( <Router> <HeaderUserSection /> </Router> );
    
    expect(getByText('Crear cuenta')).toBeTruthy();
    expect(getByText('Iniciar sesión')).toBeTruthy();

})

test("Renderizar cuando el usuario esta logueado y con las variable en sesión correctas", () => {
    sessionStorage.setItem("authenticated", true);
    sessionStorage.setItem("user",JSON.stringify({ correo: "correo@colombia.com", name: "Pedronel Gutierrez Moncayo" }));
    const {getByText, container } = render( <Router> <HeaderUserSection /> </Router> );

    expect(getByText('Pedronel Gutierrez Moncayo')).toBeTruthy();
})