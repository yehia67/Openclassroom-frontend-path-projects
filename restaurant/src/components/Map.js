import React from 'react';

class Map extends React.Component {
  static defaultProps = {
     center: {
       lat: 59.95,
       lng: 30.33
     },
     zoom: 11
   };

   render() {
     return (
       // Important! Always set the container height explicitly

       <div className="map">


       </div>
    
     );
   }
 }
export default Map;
