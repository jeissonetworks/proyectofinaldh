import AdminProducto from '../components/AdminProducto';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <AdminProducto />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
