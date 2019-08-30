
import React from 'react';
import Modal from 'react-awesome-modal';

const removedElements = []
class RestaurantList extends React.Component {
  constructor(props) {
       super(props);
       this.state = {
            visible : false,
            reviews:[],
            reviewsMap: [{key:'value'}]
        }

   }
  getReviewDetails(id){
         fetch('https://cors-anywhere.herokuapp.com/' + 'https://maps.googleapis.com/maps/api/place/details/json?placeid='+id + '&key=AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I')
        .then(response=>response.json()).then(data =>{
          console.log(data);
        })
}

   openModal() {
           this.setState({
               visible : true
           });
       };

       closeModal() {
           this.setState({
               visible : false
           });
       };
    showReviews = (index) =>
    {
      let reviewbox;
      fetch('https://cors-anywhere.herokuapp.com/' + 'https://maps.googleapis.com/maps/api/place/details/json?placeid='+this.props.restaurants[index].place_id + '&key=AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I')
     .then(response=>response.json()).then(data =>{
       this.setState({
        reviews: data.result.reviews
      },()=>{

        console.log(this.state.reviews)
        for(let index = 0; index < this.state.reviews.length;index++){
            reviewbox = "<div class='review-box'><div class='review-info'>Author: "+this.state.reviews[index].author_name +"<br/>Rate: "+this.state.reviews[index].rating   +"</div><p class='review-comment'>"+ this.state.reviews[index].text +"</p></div>";
           document.getElementById("reviewList").innerHTML += reviewbox;
        }


        this.setState({reviewsMap: [ ...this.state.reviewsMap, this.props.restaurants[index].place_id:reviewbox],});


      })


   })

   }




   addReview = (index)=>{
     if( typeof  this.state.reviewsMap[this.props.restaurants[index].place_id] === "undefined" ){
        this.showReviews(index);
        console.log(this.state.reviewsMap)
     }
     else{
         document.getElementById("reviewList").innerHTML += this.state.reviewsMap[this.props.restaurants[index].place_id];
     }
     this.openModal();
     document.getElementById("index").innerHTML = index;
   };
   removeListElement = ()=>{
     for(let i = 0; i < removedElements.length; i++ ){
       document.getElementById(removedElements[i]).setAttribute("display", "none");
     }
   }
   makeReview = (index)=>{
     console.log("console review  ahoo  ooo debug")
     const review = document.getElementById("new_review").value;
      this.addToList(index,review);
      this.addToPreviousReviews(index,review);
   }
  addToList = (index,review) =>{
    document.getElementById(this.props.restaurants[index].place_id).innerHTML =  "<div className='restaurant-review-box'><p className='restaurant-review-name'>"+ this.props.restaurants[index].name  +"</p><p className='restaurant-review-rating'>rate: "+ parseFloat((parseFloat(review)+this.props.restaurants[index].rating)/2)+ "</p><p className='restaurant-review-raters'>no. Of Reviewers:  "+ parseInt(this.props.restaurants[index].user_ratings_total+1)+ "</p></div>";
    this.getReviewDetails(this.props.restaurants[index].place_id)
    this.props.restaurants[index].rating =  parseFloat((parseFloat(review)+this.props.restaurants[index].rating)/2);
    this.props.restaurants[index].user_ratings_total = this.props.restaurants[index].user_ratings_total + 1;
  }
  addToPreviousReviews = (index,review) =>{
    const name = document.getElementById("feedback-name").value;
    const comment = document.getElementById("feedback_comment").value;
    let reviewbox = "<div class='review-box'><div class='review-info'>Author: "+ name +"<br/>Rate: "+review  +"</div><p class='review-comment'>"+ comment +"</p></div>"
    document.getElementById("reviewList").innerHTML += reviewbox;
    console.log(reviewbox)
  }
  render() {

      const items =  this.props.restaurants.map((obj,index) =>
       <li id={obj.place_id}  key={index} onClick={()=> this.addReview(index)} >
{typeof   obj.rating !== "undefined" ?
        <div className="restaurant-review-box">
          <p className="restaurant-review-name">{obj.name}</p>
          <p className="restaurant-review-rating">rate:  {obj.rating}</p>
          <p className="restaurant-review-raters">no. Of Reviewers:  {obj.user_ratings_total}</p>
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
                     <Modal visible={this.state.visible} width="1000" height="500" effect="fadeInUp" onClickAway={() => this.closeModal()}>
                            <div className="p-5 place-details">
                              <span style={{display:"none"}} id="index"></span>
                              <div className="review-form">
                                <div className="form-group  reviewer-email-box">
                                      <label htmlFor="feedback-name">Your Name</label>
                                      <input type="text" className="form-control reviewer-email" id="feedback-name" aria-describedby="emailHelp" placeholder="Enter Your User Name" required />
                                </div>

                                <div className="form-group  reviewer-score-box">
                                      <label htmlFor="new_review">Submit your feedback from 0 to 5</label>
                                      <input type="number" className="form-control reviewer-score" id="new_review" min="0" max="5" />
                                </div>

                                <div className="form-group reviewer-comment-box">
                                    <label htmlFor="feedback_comment">Leave a comment</label>
                                    <textarea className="form-control " id="feedback_comment" rows="3"></textarea>
                                  </div>
                                  <button className="btn btn-primary"  onClick={() => {
                                      this.closeModal();
                                      console.log(document.getElementById("index").innerHTML);
                                      this.makeReview(document.getElementById("index").innerHTML);

                                    }}> Submit Review</button>
                                </div>
                                 <div className="reviews-List" id="reviewList">
                                      <h4 className="reviews-List-title">Previous reviews</h4>
                                 </div>
                            </div>
                      </Modal>
                </section>
              </div>


      );
  }
}

export default RestaurantList;
