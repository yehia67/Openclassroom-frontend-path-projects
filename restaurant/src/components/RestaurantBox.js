import React from 'react';
import MapDiv from './MapDiv.js';
import '../App.css';
import RestaurantList from './RestaurantList.js';
const RestaurantContext = React.createContext('light');
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
        fetch('https://cors-anywhere.herokuapp.com/'+'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location='+this.state.Latitude +','+ this.state.Longitude + '&radius=15000&type=restaurant&keyword=cruise&key=AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I')
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

      {this.state.restaurants !== []? <RestaurantContext.Provider value=
        {{
        restaurants: this.state.restaurants,
        addReview: (reviews,index,restaurants) =>{
        restaurants[index].user_ratings_total =  restaurants[index].user_ratings_total+1;
        this.setState({
           restaurants:  restaurants
        })
      },
        addRestaurant:(restaurantName,Rating,restaurants) =>{
        const newRestaurant ={
          restaurantName: restaurantName,
          rate:Rating
        }
        restaurants.push(newRestaurant)
        this.setState({
           restaurants:restaurants
        });
      }
      }}

        > <MapDiv  restaurants={this.state.restaurants}  Latitude={this.state.Latitude} Longitude={this.state.Longitude} /></RestaurantContext.Provider> : null}


       {this.state.Latitude !== 1?   <RestaurantContext.Provider value={this.state.restaurants}> <RestaurantList restaurants={this.state.restaurants}   Latitude={this.state.Latitude} Longitude={this.state.Longitude} /></RestaurantContext.Provider> : null}



    </div>

    );
  }
}

export default RestaurantBox;
