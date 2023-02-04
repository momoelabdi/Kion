import React, { useEffect, useState } from "react";
import axios from "axios";

function Usefetch(url) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    setLoading(true);
    axios
      .get(url)
      .then((response) => {
        setData(response.data);
      })
      .catch((error) => {
        setError("An error occured while fetching data. Please try again later.");
      })
      .finally(() => {
        setLoading(false);
      });
  }, [url]);

  return { data, loading, error };
}

export default Usefetch;
