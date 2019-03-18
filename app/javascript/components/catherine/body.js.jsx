class Body extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  render() {
    return (
      <div className="row body-wrapper">
        <div className="left-column">
          <div className="works-wrapper">
            <h1 className="bloc-title">Works</h1>
            {/* <% 6.times do  %> */}
            <div className="work">
              <h2>Work title</h2>
              <h3>Company name</h3>
              <div className="work-time">
                <span>07/2011</span> - <span>07/2015</span>
              </div>
              <div className="tasks">
                <h5>Achievement/Task</h5>
                <ul>
                  <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit
                  </li>
                  <li>Lorem ipsum dolor.</li>
                  <li>Lorem ipsum dolor sit amet, consectetur adipisicing.</li>
                  <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Ipsam, veniam, voluptatem!
                  </li>
                </ul>
              </div>
            </div>
            {/* <% end %> */}
          </div>
          <div className="educations-wrapper">
            <h1 className="bloc-title">Educations</h1>
            {/* <% 3.times do %> */}
            <div className="education">
              <h2>Education title</h2>
              <div className="education-place">University of the Education</div>
              <div className="education-period">
                <span>02/2006 - 10/2011</span>
              </div>
            </div>
            {/* <% end %> */}
          </div>
          user address
        </div>
        <div className="right-column">
          <div className="skills-wrapper">
            <h1 className="bloc-title">Skills</h1>
            <ul>
              {/* <% 12.times do %> */}
              <li>
                <span className="skill-name">Lorem ipsum dolor</span>{" "}
                <span className="skill-level">5</span>
              </li>
              {/* <% end %> */}
            </ul>
          </div>
          <div className="realisation-wrapper">
            <h1 className="bloc-title">Realisations</h1>
            <ul>
              {/* <% 4.times do %> */}
              <li>
                <span className="realisation-name">Lorem ipsum dolor</span>
                <span className="realisation-link">http://links.com</span>
              </li>
              {/* <% end %> */}
            </ul>
          </div>
          <div className="languages-wrapper">
            <h1 className="bloc-title">Languages</h1>
            <ul>
              {/* <% 4.times do %> */}
              <li>
                <span className="language">French</span>
                <span className="level">5</span>
              </li>
              {/* <% end %> */}
            </ul>
          </div>
          <div className="hobbies-wrapper">
            <h1 className="bloc-title">Hobbies</h1>
            <ul>
              {/* <% 4.times do %> */}
              <li>Lorem</li>
              {/* <% end %> */}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}
