import React from "react";
import Nav from "./menus/Nav";

class Resume extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <Nav />
        <div className="containerFluid">
          <h1>The boss</h1>
        </div>
      </div>
    );
    //return this.state.composant ? <Skeleton /> : "Still loading...";
  }
}

export default Resume;
