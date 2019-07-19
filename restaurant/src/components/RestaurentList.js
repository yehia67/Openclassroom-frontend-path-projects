import React from 'react';

class RestaurantList extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        restaurants: [],
        Latitude:1,
        Longitude:1
      }
    }



    componentWillMount() {

      const success = (pos) => {
        var crd = pos.coords;
        this.setState({
          Latitude: crd.latitude,
          Longitude: crd.longitude
        },function(){
          fetch('https://api.foursquare.com/v2/venues/explore?client_id=530ZOMCUSPZECUFMZ5FGX1PIR3FTUPO5GQYYHYSRLDTQGH2Z&client_secret=4ZMYGVO4FDDRWEZFQH1JBOWQB42IOYAHZZFTBWPWLTH51SCA&v=20180323&ll='+this.state.Latitude+','+this.state.Longitude+'&query=restaurant')
         .then(response=>response.json()).then(data =>{

           let arr = [];
           console.log(data.response.groups[0].items[0].venue.name)
           for(let i = 0; i < data.response.groups[0].items.length;i++){
            arr[i] = data.response.groups[0].items[i].venue.name;
           }
           this.setState({
             restaurants: arr

           });
         })

        });
        console.log(crd);
        console.log('Your current position is: ' +pos);
        console.log(`Latitude : ${crd.latitude}`);
        console.log(`Longitude: ${crd.longitude}`);
        console.log(`More or less ${crd.accuracy} meters.`);
      };

      const error = (err) => {
        console.warn(`ERROR(${err.code}): ${err.message}`);
      }

      navigator.geolocation.getCurrentPosition(success, error);


 }

  render() {


      const items = this.state.restaurants.map((obj,index) => <li id={obj.id} key={index}><p>{obj}</p></li>);
      return (

          <div className="map-list pt-2 text-left">
            <h6 className="ml-1">Available Restaurant:</h6>
            <ul>
                {items}
            </ul>

          </div>

      );
  }
}

export default RestaurantList;
