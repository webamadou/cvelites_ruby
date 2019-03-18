class Header extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
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
              <h3>user name firstname</h3>
              <strong>
                I am a super worker that is my super title you should never
                forget about it ok!
              </strong>
            </div>
            <div className="resume">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias
              aliquam at aut debitis distinctio doloremque eius esse, est
              impedit laboriosam maiores, minima modi obcaecati pariatur
              possimus quisquam recusandae repellat voluptatibus.
            </div>
          </div>
        </div>
        <div className="row online-links-wrapper">
          <ul>
            <li className="user-email">
              <b>email@mail.com</b>
            </li>
            <li className="user-address">
              <b>
                <i className="fa fa-pin" />
                here my adress is suppose to be
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
