import ProductoCreado from '../components/ProductoCreado';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <ProductoCreado />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
