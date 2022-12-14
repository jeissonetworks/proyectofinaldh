import SaveSessionUser from '../components/usuarios/SaveSessionUser';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <SaveSessionUser />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
