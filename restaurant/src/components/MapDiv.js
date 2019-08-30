import React from 'react';
import { Map, GoogleApiWrapper, Marker,InfoWindow } from 'google-maps-react';
import Modal from 'react-awesome-modal';

const newRestaurants = []

const google = window.google;

const mapStyles = {
  height: '500px',
  width:'100%'
};

var iconBase = 'http://maps.google.com/mapfiles/marker_green.png';

const MarkersList = props => {
  const { locations, ...markerProps } = props;
  return (
    <span>
      {locations.map((location, i) => {
        return (
          <Marker
            key={i}
            {...markerProps}
            position={{ lat: location.lat(), lng: location.lng() }}
            onClick={() =>
              {
                document.getElementById("new_restaurant_Name").innerHTML =  newRestaurants[i].name;
                document.getElementById("new_restaurant_Rate").innerHTML = "Rate "+ newRestaurants[i].rating;
                document.getElementById("new_restaurant_No_Rater").innerHTML = "no. of raters " +newRestaurants[i].user_ratings_total;
                document.getElementById("details_modal").style.display = "block";
                console.log("hop");


              }
            }
          />
        );
      })}
    </span>
  );
};
class MapDiv extends React.Component {
  constructor() {
      super()
      this.state = {
        zoom: 13,
        newRestaurantName:"",
        visible : false,
        newVisible: false,
        restaurantDetailsVisible:false,
        locations: []
      }
      this.handleMapClick = this.handleMapClick.bind(this);
    }

    openModal(flag) {
           if(flag === 1)
           {
            this.setState({
                visible : true
            });
          }
          else{
            this.setState({
                restaurantDetailsVisible : true
            });
          }
        }
       closeModal(flag) {
          if(flag === 1){
            this.setState({
                visible : false
            });
          }
          else{
            this.setState({
                restaurantDetailsVisible : false
            });
          }

        }
        newOpenModal() {
                this.setState({
                    newVisible : true
                });
            }

            newCloseModal() {
                this.setState({
                    newVisible : false
                });
            }
   showRestaurantDetails = (index) =>{
      let retsuarantName;
      let rate;
      let noOfRaters;
      retsuarantName =  this.props.restaurants[index].name;
      rate = this.props.restaurants[index].rating;
      noOfRaters = this.props.restaurants[index].user_ratings_total;
      document.getElementById("restaurant_Name").innerHTML =  retsuarantName;
      document.getElementById("restaurant_Rate").innerHTML = "Rate " +rate;
      document.getElementById("restaurant_No_Rater").innerHTML = "no. of raters " + noOfRaters;
      this.openModal(0);
  };
   addRestaurant = () =>{
      const restaurantName = document.getElementById("restaurantName").value;
      const reviews = document.getElementById("rate").value;
      const user_ratings_total = 1;
      var ul = document.getElementById("restaurantsList");
      var li = document.createElement("li");
      const newRestaurant ={
        name:restaurantName,
        rating:reviews,
        user_ratings_total: user_ratings_total,
        comments:[{}]
      };

      const newRestaurantListElement = '<div className="restaurant-review-box"><p className="restaurant-review-name">'+restaurantName+'</p><p className="restaurant-review-rating">rate:  '+reviews+'</p><p className="restaurant-review-raters">no. Of Reviewers: 1</p></div>';
      newRestaurants.push(newRestaurant);
      li.innerHTML =   newRestaurantListElement;
      li.onclick = ()=>{
        this.newOpenModal();
      };
      document.getElementById("add_new_review_link").onclick = () =>{
        newRestaurants[newRestaurants.length-1].user_ratings_total = newRestaurants[newRestaurants.length-1].user_ratings_total + 1;
        let review = document.getElementById("new_review_map").value;
        let comment ={
          author_name:document.getElementById("feedback-name-map").value,
          rating: document.getElementById("new_review_map").value,
          text: document.getElementById("feedback_comment-map").value
        }
        newRestaurants[newRestaurants.length-1].comments.push(comment)
        li.innerHTML =  '<div className="restaurant-review-box"><p className="restaurant-review-name">'+newRestaurants[newRestaurants.length-1].name+'</p><p className="restaurant-review-rating">rate:  '+(parseFloat(parseFloat(review)+parseFloat(newRestaurants[newRestaurants.length-1].rating)))/2+'</p><p className="restaurant-review-raters">no. Of Reviewers: '+parseInt(newRestaurants[newRestaurants.length-1].user_ratings_total)+'</p></div>';
        newRestaurants[newRestaurants.length-1].rating = (parseFloat(parseFloat(review)+parseFloat(newRestaurants[newRestaurants.length-1].rating)))/2;
        document.getElementById("reviewListMap").innerHTML = '<h4 className="reviews-List-title">Previous reviews</h4>';
        for(let index = 1; index < newRestaurants[newRestaurants.length-1].comments.length;index++){
            let reviewbox = "<div class='review-box'><div class='review-info'>Author: "+ newRestaurants[newRestaurants.length-1].comments[index].author_name +"<br/>Rate: "+newRestaurants[newRestaurants.length-1].comments[index].rating   +"</div><p class='review-comment'>"+ newRestaurants[newRestaurants.length-1].comments[index].text +"</p></div>";
            document.getElementById("reviewListMap").innerHTML += reviewbox;
        }
      //  newRestaurants[newRestaurants.length-1].user_ratings_total = parseInt(newRestaurants[newRestaurants.length-1].user_ratings_total + 1);
        this.newCloseModal();
      };
      ul.appendChild(li);
      this.closeModal(1);
   };

    handleMapClick = (ref, map, ev) => {
      this.openModal(1)
      const location = ev.latLng;
      this.setState(prevState => ({
        locations: [...prevState.locations, location]
      }));
      map.panTo(location);
    };

    displayMarkers = () => {
      return this.props.restaurants.map((store, index) => {
       return <Marker key={index} id={index} position={{
          lat: this.props.restaurants[index].geometry.location.lat,
          lng: this.props.restaurants[index].geometry.location.lng
    }}
      onClick={() =>
        this.showRestaurantDetails(index)
      } />
     })
 }



    render() {
      return (
      <div className="map-div" id="map-div">
        <Map
                google={this.props.google}
                zoom={13}
                style={mapStyles}
                initialCenter={{ lat: this.props.Latitude, lng: this.props.Longitude}}
                 onClick={this.handleMapClick}
              >
               <MarkersList locations={this.state.locations} icon="https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png" />
              <Marker
                icon= {iconBase}
                 position={{ lat: this.props.Latitude, lng: this.props.Longitude}} />
              {this.displayMarkers()}
          </Map>
            {/* new restaurant modal */}

          <section>
                <Modal visible={this.state.visible} width="700" height="500" effect="fadeInUp" onClickAway={() => this.closeModal(1)}>
                      <div className="p-5 add-restaurant">
                        <h3 className="text-center" >Add New Restaurant</h3>
                        <div className="form-group">
                            <input type="text" required className="form-control" id="restaurantName" placeholder="Enter Restaurant Name" />
                            <label className="float-left mt-3 mb-0">Your review:</label>
                            <input type="number" required className="form-control" id="rate" placeholder="Your review from 1 to 5" max="5" min="0" />
                        </div>
                        <div className="form-group">
                            <a    className="float-left" onClick={() => this.closeModal(1)}>Close</a>
                            <a    className="float-right"  onClick={() => this.addRestaurant()}>Add Restaurant</a>
                        </div>
                      </div>
                  </Modal>
          </section>
              {/* marker modal for already existed restaurants */}

          <section>
              <Modal visible={this.state.restaurantDetailsVisible} width="400" height="150" effect="fadeInUp" onClickAway={() => this.closeModal(0)}>
                <a    className="float-left" onClick={() => this.closeModal(0)}>Close</a>
                    <div className="p-5">
                      <h5 id="restaurant_Name" ></h5>
                      <h5 id="restaurant_Rate" ></h5>
                      <h5 id="restaurant_No_Rater" ></h5>
                    </div>
                </Modal>
        </section>
          {/* marker modal for created restaurants */}

          <section id="details_modal" style={{display: "none"}} >
                <Modal  visible={true} width="400" height="150" effect="fadeInUp" onClickAway={() =>document.getElementById("details_modal").style.display = "none"}>
                  <a    className="float-left" onClick={() => {document.getElementById("details_modal").style.display = "none"}}>Close</a>
                      <div className="p-5">
                        <h5 id="new_restaurant_Name" ></h5>
                        <h5 id="new_restaurant_Rate" ></h5>
                        <h5 id="new_restaurant_No_Rater" ></h5>
                      </div>
                  </Modal>
          </section>
          {/* add review  for new restaurant modal  */}
          <section>
                 <Modal visible={this.state.newVisible} width="1000" height="500" effect="fadeInUp" onClickAway={() => this.newCloseModal()}>
                   <div className="p-5 place-details">
                     <span style={{display:"none"}} id="index"></span>
                     <div className="review-form">
                       <div className="form-group  reviewer-email-box">
                             <label htmlFor="feedback-name-map">Your Name</label>
                             <input type="text" className="form-control reviewer-email" id="feedback-name-map" aria-describedby="emailHelp" placeholder="Enter Your User Name" required />
                       </div>

                       <div className="form-group  reviewer-score-box">
                             <label htmlFor="new_review_map">Submit your feedback from 0 to 5</label>
                             <input type="number" className="form-control reviewer-score" id="new_review_map" min="0" max="5" />
                       </div>

                       <div className="form-group reviewer-comment-box">
                           <label htmlFor="feedback_comment-map">Leave a comment</label>
                           <textarea className="form-control " id="feedback_comment-map" rows="3"></textarea>
                         </div>
                         <button className="btn btn-primary"  id="add_new_review_link"> Submit Review</button>
                       </div>
                        <div className="reviews-List" id="reviewListMap">
                             <h4 className="reviews-List-title">Previous reviews</h4>
                        </div>
                   </div>
                  </Modal>
            </section>
      </div>
      );
    }

}
export default GoogleApiWrapper({
  apiKey: 'AIzaSyAR14v1v6okXPc5QrZwvsmMbaHktnQ0M5I'
})(MapDiv);
