import React from 'react';

class RestaurantList extends React.Component {

  render() {


      const items = this.props.restaurantsNames.map((obj,index) => <li id={obj.id} key={index}><p>{obj}</p></li>);
      return (
             <div>
              <div className="map-list pt-2 text-left">
                <h6 className="ml-1">Available Restaurant:</h6>
                <ul>
                    {items}
                </ul>

              </div>
              <button>click</button>
            </div>
      );
  }
}

export default RestaurantList;
