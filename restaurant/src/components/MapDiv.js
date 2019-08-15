import React from 'react';
import { Map, GoogleApiWrapper, Marker,InfoWindow } from 'google-maps-react';
import Modal from 'react-awesome-modal';

const newRestaurants = []

const google = window.google;

const mapStyles = {
  width: '500px',
  height: '500px',
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
    async componentDidMount() {

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
        user_ratings_total: user_ratings_total
      };
      const newRestaurantListElement = restaurantName +" "+ "(rate = " + reviews+", no. of raters = 1 )";
      newRestaurants.push(newRestaurant);
      li.appendChild(document.createTextNode(newRestaurantListElement));
      li.onclick = ()=>{
        let review = prompt("enter your review")
        li.innerHTML = restaurantName +" "+ "(rate = " + parseFloat((parseFloat(review)/user_ratings_total) + reviews)+", no. of raters = " +parseInt(user_ratings_total+1) +")"
        newRestaurants[newRestaurants.length-1].rating = parseFloat((parseFloat(review)/user_ratings_total) + reviews);
        newRestaurants[newRestaurants.length-1].user_ratings_total = newRestaurants[newRestaurants.length-1].user_ratings_total + 1;
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
          //new restaurant modal
          <section>
                <Modal visible={this.state.visible} width="400" height="300" effect="fadeInUp" onClickAway={() => this.closeModal(1)}>
                      <div className="p-5">
                        <h3 className="text-center" >Add New Restaurant</h3>
                        <div className="form-group">
                            <input type="text" required className="form-control" id="restaurantName" placeholder="Enter Restaurant Name" />
                            <label className="float-left mt-3 mb-0">Your review:</label>
                            <input type="range" required className="form-control" id="rate" placeholder="Your review from 1 to 5" max="5" min="1" />
                        </div>
                        <div className="form-group">
                            <a href="javascript:void(0);" className="float-left" onClick={() => this.closeModal(1)}>Close</a>
                            <a href="javascript:void(0);" className="float-right"  onClick={() => this.addRestaurant()}>Add Restaurant</a>
                        </div>
                      </div>
                  </Modal>
          </section>
          //marker modal for already existed restaurants
          <section>
              <Modal visible={this.state.restaurantDetailsVisible} width="400" height="150" effect="fadeInUp" onClickAway={() => this.closeModal(0)}>
                <a href="javascript:void(0);" className="float-left" onClick={() => this.closeModal(0)}>Close</a>
                    <div className="p-5">
                      <h5 id="restaurant_Name" ></h5>
                      <h5 id="restaurant_Rate" ></h5>
                      <h5 id="restaurant_No_Rater" ></h5>
                    </div>
                </Modal>
        </section>
          //marker modal for created restaurants
          <section id="details_modal" style={{display: "none"}} >
                <Modal  visible={true} width="400" height="150" effect="fadeInUp" onClickAway={() =>document.getElementById("details_modal").style.display = "none"}>
                  <a href="javascript:void(0);" className="float-left" onClick={() => {document.getElementById("details_modal").style.display = "none"}}>Close</a>
                      <div className="p-5">
                        <h5 id="new_restaurant_Name" ></h5>
                        <h5 id="new_restaurant_Rate" ></h5>
                        <h5 id="new_restaurant_No_Rater" ></h5>
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
