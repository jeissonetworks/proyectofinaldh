import Header from '../components/encabezado/Header';
import { render } from "@testing-library/react";
import { BrowserRouter} from 'react-router-dom';

let view = render(<BrowserRouter>
    <Header />
</BrowserRouter>);

test('Testeando el componente', () => {
    expect(screen).toBeDefined();
});
