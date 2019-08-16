import React from 'react';
import Modal from 'react-awesome-modal';


class RestaurantList extends React.Component {
  constructor(props) {
       super(props);
       this.state = {
            visible : false
        }

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

   addReview = (index)=>{
     this.openModal();
     document.getElementById("index").innerHTML = index;

   };
   makeReview = (index)=>{
     const review = document.getElementById("new_review").value;
     document.getElementById(this.props.restaurants[index].id).innerHTML =  this.props.restaurants[index].name +" "+ "(rate = " + parseFloat((parseFloat(review)/this.props.restaurants[index].user_ratings_total) + this.props.restaurants[index].rating)+", no. of raters = " +parseInt(this.props.restaurants[index].user_ratings_total+1) +")"
     this.props.restaurants[index].rating =  parseFloat((parseFloat(review)/this.props.restaurants[index].user_ratings_total) + this.props.restaurants[index].rating)
     this.props.restaurants[index].user_ratings_total = this.props.restaurants[index].user_ratings_total + 1
   }

  render() {

      const items =  this.props.restaurants.map((obj,index) => <li id={obj.id} onClick={() => this.addReview(index)}  key={index} >{obj.name +" "+ "(rate = " + obj.rating+", no. of raters = " +obj.user_ratings_total +")"}</li>,this);


      return (

              <div className="map-list pt-2 text-left">
                <h6 className="ml-2">Available Restaurant:</h6>
                <ul id="restaurantsList">
                    {items}
                </ul>

              {/* add review modal  */}
              <section>
                     <Modal visible={this.state.visible} width="250" height="150" effect="fadeInUp" onClickAway={() => this.closeModal()}>
                            <div className="p-5">
                                <span style={{display:"none"}} id="index"></span>
                                <label>Enter your review:-</label><br />
                                <input type="range" id="new_review" min="1" max="5"/>
                                <br />
                                <a href="javascript:void(0);"className="float-right" onClick={() => {
                                    this.closeModal();
                                    console.log(document.getElementById("index").innerHTML);
                                    this.makeReview(document.getElementById("index").innerHTML);
                                  }}>Submit</a>
                            </div>
                      </Modal>
                </section>
              </div>


      );
  }
}

export default RestaurantList;
