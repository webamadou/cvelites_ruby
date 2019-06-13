import React from "react";

class Header extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    let {
      name,
      firstname,
      title,
      presentation,
      email,
      address
    } = this.props.data.user;
    return (
      <div className="header-wrapper">
        <div className="row">
          <div className="col-md-2 avatar-wrapper">
            <img
              src="https://source.unsplash.com/random"
              alt="unsplash random"
            />
          </div>
          <div className="col-md-10 identity-wrapper">
            <div className="user-identity">
              <h3>
                {firstname} {name}
              </h3>
              <strong>{title}</strong>
            </div>
            <div className="resume">
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. In
              consequuntur ipsam maxime rem repellat iusto consectetur aliquam.
              Nemo ipsam provident eaque repudiandae porro dicta molestiae ullam
              aliquam aspernatur esse consequatur, perspiciatis nobis, aliquid
              corrupti, modi debitis ratione sed molestias! Atque, ipsum?
              Cupiditate repellendus saepe, nesciunt animi deserunt eaque
              doloribus debitis esse cumque consequatur a, atque eveniet ratione
              velit aliquid sint aut labore dolore illum inventore iusto.
              Voluptas eaque enim ipsa minima in odio optio quaerat quas earum
              nemo, quisquam suscipit hic officiis deleniti consequuntur et
              animi minus fugiat ea, iste quos placeat fuga quae rerum. Quisquam
              nemo voluptate harum quam.
            </div>
          </div>
        </div>
        <div className="row online-links-wrapper">
          <ul>
            <li className="user-email">
              <b>{email}</b>
            </li>
            <li className="user-address">
              <b>
                <i className="fa fa-pin" />
                {address}
              </b>
            </li>
            <li className="user-linkedin">
              <b>
                <i className="fa fa-linkedin" />
                /in/webamadou
              </b>
            </li>
            <li className="user-website">
              <b>
                <i className="fa fa-link" /> https://site.com
              </b>
            </li>
          </ul>
        </div>
      </div>
    );
  }
}

export default Header;
