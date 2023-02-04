import React from 'react';
import Home from './Home';

import {BrowserRouter as Routes, Route } from 'react-router-dom';

function AppRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/about" element={<About />} />
      <Route path="/dashboard" element={<Dashboard />} />
      <Route path="/users" element={<Users />}>
      <Route path="/" element={<UsersList />} />
      <Route path=":id" element={<User />} />
      </Route>
      <Route path="*" element={<NotFound />} />
    </Routes>
  );
}
export default AppRoutes;
