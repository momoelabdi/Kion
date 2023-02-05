import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./Home";
function App() {
  return (
    <div id="app">
      <AppRoutes />
      <Home />
      <Router>
        <Routes>
          <Route path="/home" element={<Home />} />
        </Routes>
      </Router>
    </div>
  );
}
export default App;
