import React from 'react'
import iconfacebook from '../images/iconfacebook.svg';
import iconlinkedin from '../images/iconlinkedin.svg';
import tweet from '../images/tweet.svg';
import iconig from '../images/iconig.svg';

const Footer = () => {

  return (
    <footer className="App-footer">

      <div className="App-copyright">
        <p>© 2021 Digital Booking</p>
      </div>

      <div className="App-social">
        <img src={iconfacebook} alt="Facebook" />
        <img src={iconlinkedin} alt="Linkedin" />
        <img src={tweet} alt="Twitter" />
        <img src={iconig} alt="Instagram" />
      </div>




    </footer>
  )
}
export default Footer;