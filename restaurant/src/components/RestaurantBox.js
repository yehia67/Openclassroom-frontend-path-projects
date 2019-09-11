import React from 'react';
import MapDiv from './MapDiv.js';
import '../App.css';
import RestaurantList from './RestaurantList.js';

class RestaurantBox extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
          Latitude:1,
          Longitude:1,
          restaurants: [],
      }
  }
  componentDidMount() {
    const success = (pos) => {
      var crd = pos.coords;
      this.setState({
        Latitude: crd.latitude,
        Longitude: crd.longitude
      },()=> {
        fetch('https://cors-anywhere.herokuapp.com/'+'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location='+this.state.Latitude +','+ this.state.Longitude + '&radius=150000&type=restaurant&key=AIzaSyAUXi44xrkwClTtmRDXvbR9egoGX86XTpE')
       .then(response=>response.json()).then(data =>{
         console.log(data);
         this.setState({
           restaurants: data.results
         });

       })

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

      {this.state.restaurants !== []?
        <MapDiv  restaurants={this.state.restaurants}   Latitude={this.state.Latitude} Longitude={this.state.Longitude} /> : null}


       {this.state.Latitude !== 1?  <RestaurantList restaurants={this.state.restaurants}   Latitude={this.state.Latitude} Longitude={this.state.Longitude} />: null}



    </div>

    );
  }
}

export default RestaurantBox;
