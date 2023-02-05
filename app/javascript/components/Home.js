import React from "react";
import  Usefetch from "../components/Usefetch";

function Home() {
  const { data, loading, error } = Usefetch("/listings");
  if (loading) {
    return <h1>Loading...</h1>;
  }
  if (error) console.log(error);
  console.log(data);
  return (
    <div>
      <h2 className="offers">ALlll</h2>
      <div className="cours-card">
      {data?.map((d, i, { length }) => {
        if (i === length - 1) {
          return (
            <div className="cours-details" key={d.id}>
              <h4>{d.title}</h4>
              <p> {d.description}</p>
            </div>
          );
        }
      })}
      </div>
    </div>
  );
}

export default Home;
