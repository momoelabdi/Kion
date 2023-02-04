import React from 'react';
import Home from './Home';
import { BrowserRouter as Router, Routes, Route} from "react-router-dom";

function AppRoutes() {
  return (
    <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="*" element={<NotFound />} />
    </Routes>
    </Router>
  );
}
export default AppRoutes;
