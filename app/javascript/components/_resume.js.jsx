import React from "react";

class Resume extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      composant: "Header",
      modules: ["Header", "Body"]
    };
  }
  /* 
  autoModule() {
    const modules = [];
    modules.push(
      Loadable({
        loading: function() {
          <div>Header</div>;
        }
      })
    );
    this.setState({ ...this.state, modules });
  }

  componentDidMount() {
    this.autoModule();
  } */

  render() {
    let { user } = this.props.data;
    let composant = "TeslaHeader";

    return (
      <div className="builder-wrapper">
        <div className="builder-container">
          <h1 className="text-center">Building Resume</h1>
          <div className="resume-skeleton">
            <div className="skeleton-sheet skeleton-catherine">
              <h1>This is usually not a good thing</h1>
            </div>
          </div>
        </div>
      </div>
    );
    //return this.state.composant ? <Skeleton /> : "Still loading...";
  }
}

export default Resume;
