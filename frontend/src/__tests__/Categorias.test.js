import Categorias from '../components/Categorias';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Categorias />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
