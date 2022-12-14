import Categoria from '../components/Categoria';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Categoria />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
