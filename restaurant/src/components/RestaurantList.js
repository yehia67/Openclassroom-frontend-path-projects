import React from 'react';

class RestaurantList extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        restaurants: []

      }
    }



    componentWillMount() {

         console.log("Latiufr "+this.props.Latitude)
         console.log("Longitude "+this.props.Longitude);
         fetch('https://api.foursquare.com/v2/venues/explore?client_id=530ZOMCUSPZECUFMZ5FGX1PIR3FTUPO5GQYYHYSRLDTQGH2Z&client_secret=4ZMYGVO4FDDRWEZFQH1JBOWQB42IOYAHZZFTBWPWLTH51SCA&v=20180323&limit=1&ll='+this.props.Latitude+','+this.props.Longitude+'&query=restaurant')
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
