import React from 'react';
import Modal from 'react-awesome-modal';


class RestaurantList extends React.Component {
  constructor(props) {
       super(props);

   }

   addReview = (index)=>{
     let review = prompt("Enter your review");
     document.getElementById(this.props.restaurants[index].id).innerHTML =     this.props.restaurants[index].name +" "+ "(rate = " + parseFloat((parseFloat(review)/this.props.restaurants[index].user_ratings_total) + this.props.restaurants[index].rating)+", no. of raters = " +parseInt(this.props.restaurants[index].user_ratings_total+1) +")"
     alert(this.props.restaurants[index].name)
   };

  render() {

      const items =  this.props.restaurants.map((obj,index) => <li id={obj.id} onClick={() => this.addReview(index)}  key={index} >{obj.name +" "+ "(rate = " + obj.rating+", no. of raters = " +obj.user_ratings_total +")"}</li>,this);


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
