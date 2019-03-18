import React from "react";

class Nav extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  render() {
    let { user, urls } = this.props.data;
    let user_menu = user == null ? "Login" : user.name;

    return (
      <nav className="navbar navbar-expand-lg navbar-light builder-navbar">
        <div className="container">
          <a className="navbar-brand logo_h logo-design" href="">
            <strong>C</strong>
            <b>V</b>ELITE
          </a>
          <button
            className="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="icon-bar" />
            <span className="icon-bar" />
            <span className="icon-bar" />
          </button>
          <div
            className="collapse navbar-collapse offset"
            id="navbarSupportedSettings"
          >
            <ul className="nav navbar-nav menu_nav ml-auto">
              <li className="nav-item submenu dropdown active">
                <a className="nav-link" href="">
                  Themes
                </a>
                <ul className="dropdown-menu">
                  <li className="nav-item">
                    <a className="nav-link" href={urls.profile}>
                      <i className="lnr lnr-user" />
                      Themes
                    </a>
                  </li>
                </ul>
              </li>
              <li className="nav-item submenu dropdown">
                <a className="nav-link" href="">
                  Settings
                </a>
                <ul className="dropdown-menu">
                  <li className="nav-item">
                    <a className="nav-link" href={urls.profile}>
                      <i className="lnr lnr-user" />
                      Template
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div
            className="collapse navbar-collapse offset"
            id="navbarSupportedContent"
          >
            <ul className="nav navbar-nav menu_nav ml-auto">
              <li className="nav-item">
                <a
                  className="nav-link btn primary-btn"
                  href={urls.resume_download}
                >
                  Download
                </a>
              </li>
              <li className="nav-item submenu dropdown">
                <a
                  href="#"
                  className="nav-link dropdown-toggle"
                  data-toggle="dropdown"
                  role="button"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i className="lnr lnr-user" /> {user.name}
                </a>
                <ul className="dropdown-menu">
                  <li className="nav-item">
                    <a className="nav-link" href={urls.profile}>
                      <i className="lnr lnr-user" />
                      Profil
                    </a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="">
                      <i className="lnr lnr-power-switch" /> Logout
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    );
  }
}

export default Nav;
