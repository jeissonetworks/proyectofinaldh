import TemplateReservas from '../components/TemplateReservas';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <TemplateReservas />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
