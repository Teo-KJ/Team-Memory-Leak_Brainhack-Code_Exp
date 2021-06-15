const express = require('express');
const app = express();

app.listen(3001, function(){
    console.log('Server running at port 3001');
});

const PATH = '/hawkers'

let storesList = [
    {
        "id":1,
        "name":"Adam Chicken Rice",
        "imgURLs": ["https://live.staticflickr.com/65535/48131808456_069dd4f16b_h.jpg","https://live.staticflickr.com/65535/48083623257_039607f87f_h.jpg"],
        "description": "Adam Chicken Rice is a must try to enjoy Malay cuisines in Adam's road. It serves 3 main dishes, the Ayam Penyet, Chicken Rice and Roti John. Many who visited the stall complimented the fragrant rice coupled with the moist and flavourful chicken. It is simply an irresistible combination!",
        "address":"2 Adam Rd, #01-08, Singapore 289877",
        "latitude": 1.324023,
        "longitude":103.814163
    },
    {
        "id":2,
        "name":"Pondok Satay",
        "imgURLs": ["https://live.staticflickr.com/65535/48130596001_54280f6d2b_h.jpg","https://live.staticflickr.com/65535/48083521626_24b2cd0592_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-13, Singapore 289877",
        "latitude": 1.324700,
        "longitude":103.814066
    },
    {
        "id":3,
        "name":"Yummy Rojak",
        "imgURLs": ["https://live.staticflickr.com/65535/48130680242_0026a4e428_h.jpg","https://live.staticflickr.com/65535/48083622962_d2f1e5868f_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-19, Singapore 289877",
        "latitude": 1.324716,
        "longitude":103.814425
    },
    {
        "id":4,
        "name":"Teck Kee Hot & Cold Dessert",
        "imgURLs": ["https://live.staticflickr.com/65535/48130550358_6e8af4dc03_h.jpg","https://live.staticflickr.com/65535/48130523916_a6b6b17dae_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-31, Singapore 289877",
        "latitude": 1.324185,
        "longitude":103.814500
    },
    {
        "id":5,
        "name":"House of Braised Duck",
        "imgURLs": ["https://live.staticflickr.com/65535/48130621243_08a535d7a7_h.jpg","https://live.staticflickr.com/65535/48083622772_ace2370e36_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-26, Singapore 289877",
        "latitude": 1.323922,
        "longitude":103.814651
    },
    {
        "id":6,
        "name":"Bahrakath Mutton Soup King",
        "imgURLs": ["https://live.staticflickr.com/65535/48130621178_bf1fb54005_h.jpg","https://live.staticflickr.com/65535/48083520901_0d0cd15334_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-10, Singapore 289877",
        "latitude": 1.324507,
        "longitude":103.813092
    },
    {
        "id":7,
        "name":"Selera Rasa Nasi Lemak",
        "imgURLs": ["https://live.staticflickr.com/65535/48090807302_b9ad88465d_h.jpg","https://live.staticflickr.com/65535/48090709291_81b702998a_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-02, Singapore 289877",
        "latitude": 1.323751,
        "longitude":103.814267
    },
    {
        "id":8,
        "name":"Stall 22 Hokkien Mee",
        "imgURLs": ["https://live.staticflickr.com/65535/48130681032_1ccf30ba99_h.jpg","https://live.staticflickr.com/65535/48083622987_618b9de903_h.jpg"],
        "description": "",
        "address":"2 Adam Rd, #01-22, Singapore 289877",
        "latitude": 1.324074,
        "longitude":103.812861
    },
]

app.get(PATH, function(req,res){
    res.send(storesList);
});