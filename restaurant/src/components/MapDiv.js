import React from 'react';
import { Map, GoogleApiWrapper, Marker,InfoWindow } from 'google-maps-react';
import Modal from 'react-awesome-modal';

const google = window.google;
const mapStyles = {
  width: '500px',
  height: '500px',
};
var iconBase = 'http://maps.google.com/mapfiles/marker_green.png';
const MarkersList = props => {
  const { locations, ...markerProps } = props;
  return (
    <span>
      {locations.map((location, i) => {
        return (
          <Marker
            key={i}
            {...markerProps}
            position={{ lat: location.lat(), lng: location.lng() }}
            onClick={() =>
            alert("hehehehehehehe")
          }
          />
        );
      })}
    </span>
  );
};
class MapDiv extends React.Component {
  constructor() {
      super()
      this.state = {
        zoom: 13,
        newRestaurantName:"",
        visible : false,
        locations: []
      }
      this.handleMapClick = this.handleMapClick.bind(this);
    }



       openModal() {
           this.setState({
               visible : true
           });
       }

       closeModal() {
           this.setState({
               visible : false
           });
       }
    async componentDidMount() {

    }
   addRestaurant = () =>{
    const  restaurantName = prompt("Enter restaurant name: ");
    this.setState(prevState => ({
      newRestaurantName: restaurantName
    }));
   };

    handleMapClick = (ref, map, ev) => {
      this.addRestaurant()
      const location = ev.latLng;
      this.setState(prevState => ({
        locations: [...prevState.locations, location]
      }));
      map.panTo(location);
    };

    displayMarkers = () => {
   return this.props.restaurants.map((store, index) => {
     return <Marker key={index} id={index} position={{
      lat: this.props.restaurants[index].geometry.location.lat,
      lng: this.props.restaurants[index].geometry.location.lng
    }}
    onClick={() =>
    alert("Name: "+   this.props.restaurants[index].name +" " +"(rate = " + this.props.restaurants[index].rating +", no. of raters = " + this.props.restaurants[index].user_ratings_total    +")" )
    } />
   })
 }



    render() {
      return (
      <div className="map-div" id="map-div">

        <Map
                google={this.props.google}
                zoom={13}
                style={mapStyles}
                initialCenter={{ lat: this.props.Latitude, lng: this.props.Longitude}}
                 onClick={this.handleMapClick}
              >
               <MarkersList locations={this.state.locations} icon="https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png" />
              <Marker
                icon= {iconBase}
                 position={{ lat: this.props.Latitude, lng: this.props.Longitude}} />
              {this.displayMarkers()}
            </Map>

      </div>
      );
    }

}
export default GoogleApiWrapper({
  apiKey: 'AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I'
})(MapDiv);
