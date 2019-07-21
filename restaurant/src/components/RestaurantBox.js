import React from 'react';
import Map from './Map.js';
import '../App.css';
import RestaurantList from './RestaurantList.js';
class RestaurantBox extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
          Latitude:1,
          Longitude:1
      }
  }
  componentDidMount() {
    const success = (pos) => {
      var crd = pos.coords;
      this.setState({
        Latitude: crd.latitude,
        Longitude: crd.longitude
      },()=> {
        console.log(crd);
        console.log('Your current position is: ' +pos);
        console.log(`Latitude : ${this.state.Latitude}`);
        console.log(`Longitude: ${this.state.Longitude}`);
        console.log(`More or less ${crd.accuracy} meters.`);

      })

    };

    const error = (err) => {
      console.warn(`ERROR(${err.code}): ${err.message}`);
    };

    navigator.geolocation.getCurrentPosition(success, error);


}


  render() {
    return (

      <div className="map-box row align-items-center" >

      <Map  />

        {this.state.Latitude !== 1?   <RestaurantList Latitude={this.state.Latitude} Longitude={this.state.Longitude} />: null}



    </div>

    );
  }
}

export default RestaurantBox;
