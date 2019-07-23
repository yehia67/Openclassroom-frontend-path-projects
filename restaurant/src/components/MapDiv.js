import React from 'react';
import { Map, GoogleApiWrapper, Marker } from 'google-maps-react';
const google = window.google;
const mapStyles = {
  width: '500px',
  height: '500px',
};
class MapDiv extends React.Component {
  constructor() {
      super()
      this.state = {
        zoom: 13
      }
    }

    displayMarkers = () => {
   return this.props.restaurants.map((store, index) => {
     return <Marker key={index} id={index} position={{
      lat: this.props.restaurants[index].geometry.location.lat,
      lng: this.props.restaurants[index].geometry.location.lng
    }}
    onClick={() => console.log("You clicked me!")} />
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
              >
              {this.displayMarkers()}
            </Map>

      </div>
      );
    }

}
export default GoogleApiWrapper({
  apiKey: 'AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I'
})(MapDiv);
