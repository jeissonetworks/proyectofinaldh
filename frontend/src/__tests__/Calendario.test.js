import CalendarioMobile from '../components/Calendario';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <CalendarioMobile />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
