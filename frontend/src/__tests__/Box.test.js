import Box from '../components/Box';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';


let view = render(<Router>
    <Box />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
