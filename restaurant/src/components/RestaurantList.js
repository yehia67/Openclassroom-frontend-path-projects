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

   addReview = (review,NoOfreviewer)=>{
     NoOfreviewer++;
     console.log(NoOfreviewer)
     this.returnNoOfRateres(NoOfreviewer)
   };
   returnNoOfRateres = (no) =>{
     return no;
   }
  render() {

      const items =  this.props.restaurants.map((obj,index) => <li id={obj.id} key={index} ><a href="javascript:void(0);" onClick={() => this.addReview(obj.rating,obj.user_ratings_total) } >{obj.name +" "+ "(rate = " + obj.rating+", no. of raters = " +this.returnNoOfRateres(obj.user_ratings_total) +")"}</a></li>,this);


      return (

              <div className="map-list pt-2 text-left">
                <h6 className="ml-2">Available Restaurant:</h6>
                <ul>
                    {items}
                </ul>
                <section>
                       <input type="button" value="add a restaurant" onClick={() => this.openModal()} />
                      <Modal visible={this.state.visible} width="400" height="300" effect="fadeInUp" onClickAway={() => this.closeModal()}>
                            <div>
                                <a href="javascript:void(0);" onClick={() => this.closeModal()}>Close</a>
                            </div>
                        </Modal>
                </section>

              </div>


      );
  }
}

export default RestaurantList;
