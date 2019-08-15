import React from 'react';
import './App.css';
import './index.css';
import Header from './components/Header.js';
import RestaurantBox from './components/RestaurantBox.js';
import Footer from './components/Footer.js';

class App extends React.Component {
  render() {
    return (
      <div className="App">
      <Header />
     <RestaurantBox />
     <div className="clearfix"></div>
     <Footer />

    </div>
    );
  }
}

export default App;
