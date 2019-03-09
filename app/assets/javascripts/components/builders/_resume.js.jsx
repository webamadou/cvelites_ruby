class Resume extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      composant: "Skeleton"
    };
  }
  render() {
    let { user } = this.props.data;
    let composant = "Skeleton";

    return this.state.composant ? <Skeleton /> : "Still loading...";
  }
}
