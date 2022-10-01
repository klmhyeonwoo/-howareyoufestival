const api_key = '9c1f751188f8e6b495ec3ec109d1c600';
let w_latitude, w_longitude = "";
// const weather = document.querySelector('.weather');

w_latitude = 37.33062744906317;
w_longitude = 127.11086061761277;

fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${w_latitude}&lon=${w_longitude}&appid=${api_key}`)
.then((res) => {
    return res.json();
})
.then((data) => {
    console.log(data);
})
