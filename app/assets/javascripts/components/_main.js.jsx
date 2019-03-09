class Main extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      resume: props.resume.resume
    };
    //console.log(props.resume.resume);
  }
  render() {
    let resume = this.props.resume.resume;
    return (
      <div>
        <h1>{resume.name}</h1>
        <Builder resume={resume} />
      </div>
    );
  }
}
