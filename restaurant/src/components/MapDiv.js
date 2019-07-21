import React from 'react';
import { Map, TileLayer, Marker, Popup } from './leaflet'
const google = window.google;
class MapDiv extends React.Component {
  constructor() {
      super()
      this.state = {
        zoom: 13
      }
    }

   render() {
     const position = [this.props.Latitude, this.props.Longitude];
     return (
       <div className="map" id="map">
         <Map center={position} zoom={this.state.zoom}>
                <TileLayer
                  attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
                  url='https://{s}.tile.osm.org/{z}/{x}/{y}.png'
                />
                <Marker position={position}>
                  <Popup>
                    A pretty CSS3 popup. <br/> Easily customizable.
                  </Popup>
                </Marker>
      </Map>
     </div>
     );
   }
 }
export default MapDiv;
