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
        <h1>This is supposed to be the header</h1>
      </div>
    );
  }
}

export default Header;
