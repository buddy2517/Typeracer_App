const axios = require("axios");

const getSentence = async () => {
    const jokeData = await axios.get("https://api.kanye.rest");

    return jokeData.data.quote.split(" ");
}

module.exports = getSentence;