import React from 'react';
import Map from './Map.js';
import '../App.css';
import RestaurantList from './RestaurantList.js';
class RestaurantBox extends React.Component {
  render() {
    return (

      <div className="map-box row align-items-center" >

      <Map  />
      <RestaurantList />


    </div>

    );
  }
}

export default RestaurantBox;
