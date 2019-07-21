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
        console.log("Latiufr "+this.props.Latitude)
        console.log("Longitude "+this.props.Longitude);
        fetch('https://api.foursquare.com/v2/venues/explore?client_id=530ZOMCUSPZECUFMZ5FGX1PIR3FTUPO5GQYYHYSRLDTQGH2Z&client_secret=4ZMYGVO4FDDRWEZFQH1JBOWQB42IOYAHZZFTBWPWLTH51SCA&v=20180323&limit=10&ll='+this.state.Latitude+','+this.state.Longitude+'&query=restaurant')
       .then(response=>response.json()).then(data =>{

         let arrName = [];
         let arr = [];
         console.log(data.response.groups[0])
         console.log(data.response.groups[0].items[0].venue.name)

         for(let i = 0; i < data.response.groups[0].items.length;i++){
          arrName[i] = data.response.groups[0].items[i].venue.name;
          arr[i] = data.response.groups[0].items[i].venue;
         }

         this.setState({
           restaurantsNames: arrName,
           restaurants: arr
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
