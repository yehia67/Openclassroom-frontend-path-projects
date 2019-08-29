
import React from 'react';
import Modal from 'react-awesome-modal';

const removedElements = []
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
   removeListElement = ()=>{
     for(let i = 0; i < removedElements.length; i++ ){
       document.getElementById(removedElements[i]).setAttribute("display", "none");
     }
   }
   makeReview = (index)=>{
     const review = document.getElementById("new_review").value;
     document.getElementById(this.props.restaurants[index].place_id).innerHTML =  "<div className='restaurant-review-box'><p className='restaurant-review-name'>"+ this.props.restaurants[index].name  +"</p><p className='restaurant-review-rating'>rate: "+ parseFloat((parseFloat(review)+this.props.restaurants[index].rating)/2)+ "</p><p className='restaurant-review-raters'>no. Of Reviewers:  "+ parseInt(this.props.restaurants[index].user_ratings_total+1)+ "</p><button className='restaurant-add-review' onClick= '{()=> alert('yarab')}' >Add Review</button></div>"

     this.props.restaurants[index].rating =  parseFloat((parseFloat(review)+this.props.restaurants[index].rating)/2)
     this.props.restaurants[index].user_ratings_total = this.props.restaurants[index].user_ratings_total + 1
   }

  render() {

      const items =  this.props.restaurants.map((obj,index) =>
       <li id={obj.place_id}
         onClick={()=> this.addReview(index)}  key={index} >
{typeof   obj.rating !== "undefined" ?
        <div className="restaurant-review-box">
          <p className="restaurant-review-name">{obj.name}</p>
          <p className="restaurant-review-rating">rate:  {obj.rating}</p>
          <p className="restaurant-review-raters">no. Of Reviewers:  {obj.user_ratings_total}</p>
          <button className="restaurant-add-review" onClick={()=> alert("yarab")} >Add Review</button>
        </div>
         : ""  }
       </li>,this);


      return (

              <div className="map-list pt-2 text-left">
                <h6 className="ml-2">Available Restaurant:</h6>
                <ul id="restaurantsList">
                    {items}
                </ul>

              {/* add review modal  */}
              <section>
                     <Modal visible={this.state.visible} width="450" height="250" effect="fadeInUp" onClickAway={() => this.closeModal()}>
                            <div className="p-5">
                                <span style={{display:"none"}} id="index"></span>
                                <label>Enter your review:-</label><br />
                                <input type="range" id="new_review" min="1" max="5"/>
                                <br />
                                <a  className="float-right" onClick={() => {
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
