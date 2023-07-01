

//axios.defaults.baseURL = 'http://39.99.205.8:5001/';
//axios.defaults.baseURL = 'http://120.24.240.133:5001/';
//axios.defaults.baseURL = 'http://8.129.168.111:5001/';
//axios.defaults.baseURL = 'http://8.142.169.233:5001/';
//axios.defaults.baseURL = 'http://36.139.125.166:5001/';
axios.defaults.baseURL = 'https://localhost:7094/';
function axnormal(data) {

}
function axform() {
    axios.defaults.headers['Content-Type'] = 'application/x-www-form-urlencoded';
}
function axlogin(url, data) {
    return new Promise((resolve, reject) => {
        url = url + '?' + data;
        axios.post(url, data)
            .then(res => {
                resolve(res.data)
            })
            .catch(err => {
                console.log(err)
                reject(err.data)
            })
    })
}


