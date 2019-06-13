import React from "react";

class Nav extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  render() {
    /* let { user, urls } = this.props.data;
    let user_menu = user == null ? "Login" : user.name; */

    return (
      <header className="header_area">
        <div className="main_menu">
          <div
            className="search_input"
            id="search_input_box"
            style={{ display: "none" }}
          >
            <div className="container">
              <form
                className="d-flex justify-content-between"
                method=""
                action=""
              >
                <input
                  type="text"
                  className="form-control"
                  id="search_input"
                  placeholder="Search Here"
                />
                <button type="submit" className="btn" />
                <span
                  className="lnr lnr-cross"
                  id="close_search"
                  title="Close Search"
                />
              </form>
            </div>
          </div>

          <nav className="navbar navbar-expand-lg navbar-light">
            <div className="container">
              <a className="navbar-brand logo_h" href="index.html">
                <img
                  src={require("../../../assets/images/img/logo.png")}
                  alt="cvelites"
                />
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
                id="navbarSupportedContent"
              >
                <ul className="nav navbar-nav menu_nav ml-auto">
                  <li className="nav-item submenu dropdown">
                    <a
                      href="#"
                      className="nav-link dropdown-toggle"
                      data-toggle="dropdown"
                      role="button"
                      aria-haspopup="true"
                      aria-expanded="false"
                    >
                      Blog
                    </a>
                    <ul className="dropdown-menu">
                      <li className="nav-item">
                        <a className="nav-link" href="blog.html">
                          Blog
                        </a>
                      </li>
                      <li className="nav-item">
                        <a className="nav-link" href="single-blog.html">
                          Blog Details
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="contact.html">
                      Builder
                    </a>
                  </li>
                  <li className="nav-item">
                    <a href="#" className="nav-link search" id="search">
                      <i className="lnr lnr-magnifier" />
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
                      User
                    </a>
                    <ul className="dropdown-menu">
                      <li className="nav-item">
                        <a className="nav-link" href="courses.html">
                          Profil
                        </a>
                      </li>
                      <li className="nav-item">
                        <a className="nav-link" href="course-details.html">
                          My CV
                        </a>
                      </li>
                      <li className="nav-item">
                        <a className="nav-link" href="elements.html">
                          Deconnexion
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>
    );
  }
}

export default Nav;
