import React from "react";
import Nav from "./menus/_nav.js";
import Resume from "./_resume.js";

class Builder extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      resume: this.props.data.resume
    };
  }
  render() {
    const { user } = this.props.data;
    return (
      <React.Fragment>
        <Nav data={this.props.data} />
        <Resume data={this.props.data} />
      </React.Fragment>
    );
  }
}

export default Builder;
