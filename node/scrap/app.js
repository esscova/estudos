const axios = require('axios');

(
async () => {
  try {
    const getResponse = await axios.get('https://jsonplaceholder.typicode.com/posts/1');
    console.log(getResponse);
  } catch (error) {
    console.error(error);
  }

  try {
    const postResponse = await axios.post('https://jsonplaceholder.typicode.com/posts', {
      title: 'foo',
      body: 'bar',
      userId: 1
    });
    console.log(postResponse);
  } catch (error) {
    console.error(error);
  }
}

)();