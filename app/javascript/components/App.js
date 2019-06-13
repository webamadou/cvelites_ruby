import React from "react";
import axios from "axios";
import { Route } from "react-router-dom";

import Resume from "./components/Resume";
import Builder from "./components/Builder";
import "./styles/styles";

const App = () => (
  <div>
    <Route path="/" component={Resume} />
    <Route path="/builders/:id" component={Builder} />
  </div>
);

export default App;
