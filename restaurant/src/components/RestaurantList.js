import React from 'react';
import Modal from 'react-awesome-modal';


class RestaurantList extends React.Component {
  constructor(props) {
       super(props);

   }

   addReview = (review,NoOfreviewer)=>{
     NoOfreviewer++;
     console.log(NoOfreviewer)
     this.returnNoOfRateres(NoOfreviewer)
   };
   returnNoOfRateres = (no) =>{
     return no;
   }
  render() {

      const items =  this.props.restaurants.map((obj,index) => <li id={obj.id} key={index} >{obj.name +" "+ "(rate = " + obj.rating+", no. of raters = " +this.returnNoOfRateres(obj.user_ratings_total) +")"}</li>,this);


      return (

              <div className="map-list pt-2 text-left">
                <h6 className="ml-2">Available Restaurant:</h6>
                <ul id="restaurantsList">
                    {items}
                </ul>
              

              </div>


      );
  }
}

export default RestaurantList;
