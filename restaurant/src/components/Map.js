import React from 'react';

class Map extends React.Component {



   render() {

     return (
       // Important! Always set the container height explicitly

       <div className="map">

  {this.props.value}
       </div>

     );
   }
 }
export default Map;
