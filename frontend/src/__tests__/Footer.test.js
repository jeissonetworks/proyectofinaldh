import Footer from '../components/Footer';
import { render, screen} from "@testing-library/react";
import { BrowserRouter as Router } from 'react-router-dom';

let view = render(<Router>
    <Footer />
</Router>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
