import React from "react";
import {
  Navbar,
  Nav,
  NavDropdown,
  Form,
  FormControl,
  Button
} from "react-bootstrap";

class MDBNav extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  render() {
    let { user, urls } = this.props.data;
    let user_menu = user == null ? "Login" : user.name;

    return (
      <Navbar bg="light" expand="lg">
        <Navbar.Brand href={urls.home}>
          <strong>C</strong>
          <b>V</b>ELITE
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="mr-auto">
            <Nav.Link href="#home">Templates</Nav.Link>
            <NavDropdown title="Template" id="basic-nav-dropdown">
              <NavDropdown.Item href="#action/3.1">Default</NavDropdown.Item>
              <NavDropdown.Item
                href="#action/3.2"
                action={this.props.PickTemplate("catherine")}
              >
                Catherine
              </NavDropdown.Item>
              <NavDropdown.Divider />
              <NavDropdown.Item href="#action/3.4">
                Separated link
              </NavDropdown.Item>
            </NavDropdown>
            <NavDropdown title="Layout" id="basic-nav-dropdown">
              <NavDropdown.Item href="#action/3.1">Action</NavDropdown.Item>
              <NavDropdown.Item href="#action/3.2">
                Another action
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.3">Something</NavDropdown.Item>
              <NavDropdown.Divider />
              <NavDropdown.Item href="#action/3.4">
                Separated link
              </NavDropdown.Item>
            </NavDropdown>
          </Nav>
          <Nav className="mr-auto">
            <NavDropdown title={user.name} id="basic-nav-dropdown">
              <NavDropdown.Item href="#action/3.1">
                {" "}
                <i className="lnr lnr-user" /> {user.name}{" "}
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.2">
                Another action
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.3">Something</NavDropdown.Item>
              <NavDropdown.Divider />
              <NavDropdown.Item href="#action/3.4">
                Separated link
              </NavDropdown.Item>
            </NavDropdown>
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}

export default MDBNav;
