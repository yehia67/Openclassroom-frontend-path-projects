import React from 'react';
import logo from '../logo2.png';
class Header extends React.Component {
  render() {
    return (

<nav className="navbar" style={{backgroundColor: "#666666"}}>
  <a className="navbar-brand" href="#">
    <img src={logo} width="200" height="30" alt="notfound" />
  </a>
</nav>


    );
  }
}

export default Header;
