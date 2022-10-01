import Item from "./components/Item";

function App() {
    const item = new Item();

    item.test();
    item.setState({a:3});
    item.test();
}

export default App;