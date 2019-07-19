import React from 'react';
import Map from './Map.js';
import '../App.css';
import RestaurentList from './RestaurentList.js';
class RestaurentBox extends React.Component {
  render() {
    return (

      <div className="map-box row align-items-center" >

      <Map  />
      <RestaurentList />


    </div>

    );
  }
}

export default RestaurentBox;
