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
          restaurantsNames:[]
      }
  }
  componentDidMount() {
    const success = (pos) => {
      var crd = pos.coords;
      this.setState({
        Latitude: crd.latitude,
        Longitude: crd.longitude
      },()=> {
        fetch('https://cors-anywhere.herokuapp.com/'+'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location='+this.state.Latitude +','+ this.state.Longitude + '&radius=15000&type=restaurant&keyword=cruise&key=AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I')
       .then(response=>response.json()).then(data =>{

           console.log(data)
           console.log(this.state.Latitude)
           console.log(this.state.Longitude)
         let arrName = [];
         let arr = [];
         console.log(data.results)
         console.log(data.results[0].name)

         for(let i = 0; i < data.results.length;i++){
          arrName[i] = data.results[i].name;
         }

         this.setState({
           restaurantsNames: arrName,
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


      {this.state.restaurants !== []?   <MapDiv restaurants={this.state.restaurants} restaurantsNames={this.state.restaurantsNames} Latitude={this.state.Latitude} Longitude={this.state.Longitude} />: null}


       {this.state.Latitude !== 1?   <RestaurantList  restaurantsNames={this.state.restaurantsNames} Latitude={this.state.Latitude} Longitude={this.state.Longitude} />: null}



    </div>

    );
  }
}

export default RestaurantBox;
