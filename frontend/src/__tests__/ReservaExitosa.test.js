import ReservaExitosa from '../components/ReservaExitosa';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <ReservaExitosa />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});

