import React from 'react';
import UseFetch from './UseFetch';

function Home() {
  const { data, loading, error } = UseFetch("/listings");
  return (
    <div>
      <h1>Home</h1>
    </div>
  );
}
export default Home;
