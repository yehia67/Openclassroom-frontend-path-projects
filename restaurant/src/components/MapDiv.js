import React from 'react';
import { Map, GoogleApiWrapper, Marker,InfoWindow } from 'google-maps-react';
const google = window.google;
const mapStyles = {
  width: '500px',
  height: '500px',
};
var iconBase = 'http://maps.google.com/mapfiles/marker_green.png';
class MapDiv extends React.Component {
  constructor() {
      super()
      this.state = {
        zoom: 13,
        fields:{}
      }
    }

    async componentDidMount() {
      const { lat, lng } = await this.getcurrentLocation();
      this.setState(prev => ({
        fields: {
          ...prev.fields,
          location: {
            lat,
            lng
          }
        },
        currentLocation: {
          lat,
          lng
        }
      }));
    }

     getcurrentLocation() {
      if (navigator && navigator.geolocation) {
        return new Promise((resolve, reject) => {
          navigator.geolocation.getCurrentPosition(pos => {
            const coords = pos.coords;
            resolve({
              lat: coords.latitude,
              lng: coords.longitude
            });
          });
        });
      }
      return {
        lat: 0,
        lng: 0
      };
    }
    addMarker = (c,location, map) => {
      console.log("clicl");
      console.log(c[0]);
      console.log(location);
    //  console.log(location.lng[0].b);
      this.setState(prev => ({
        fields: {
          ...prev.fields,
          location
        }
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
                onClick={(t, map, c) => this.addMarker(c,c.latLng, map)}
              >
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
