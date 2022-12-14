import Producto from '../components/Producto';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Producto />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
