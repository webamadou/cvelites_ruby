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
        <div className="resume-skeleton">
          <div className="header-rapper">
            <div className="row">
              <div className="col-md-4">{user.name}</div>
              <div className="col-md-8">
                <h3>
                  {user.name} {user.firstname}
                </h3>
              </div>
              <div className="col-md-12">{user.presentation}</div>
            </div>
            <div className="row online-links">
              <div className="col-md-2">
                <b>{user.email}</b>
              </div>
              <div className="col-md-2">
                <b>{user.address}</b>
              </div>
            </div>
          </div>
        </div>
      </React.Fragment>
    );
  }
}
