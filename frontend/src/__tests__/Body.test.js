import Body from '../components/Body';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Body />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
