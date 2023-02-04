import React from 'react';
import Usefetch from "../components/Usefetch.";

function Home() {
  const { data, loading, error } = Usefetch("/listings");
  if (loading) {
    <h1>Loading...</h1>;
  }
  if (error) console.log(error);
  console.log(data);
  return (
    <div>
      <h2 className="offers">ALL OUR OFFERS</h2>
      <div className="cours-card">
        {data?.map((d) => {
          return (
            <div className="cours-details" key={d.id}>
              <h4> PACKAGES :{d.title}</h4>
              <p> {d.description}</p>
            </div>
          );
        })}
      </div>
    </div>
  );
}

export default Home;
