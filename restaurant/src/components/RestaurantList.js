import React from 'react';

class RestaurentList extends React.Component {
  constructor(props) {
      super(props);
      // change code below this line
      this.state = {
        restaurants: []
      }
      // change code above this line
      this.handleSubmit = this.handleSubmit.bind(this);
      this.handleChange = this.handleChange.bind(this);
    }

  render() {
    return (

<div className="map-list"></div>

    );
  }
}

export default RestaurentList;
