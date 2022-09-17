import React from 'react';
import { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

import Header from '../Header/Header.jsx';
import GalleryList from '../GalleryList/GalleryList.jsx';

function App() {

    useEffect(() => {
        getGallery();
    }, []);

    const [photos, setPhotos] = useState([]);

    const getGallery = () => {
        axios({
            method: 'GET',
            url: '/gallery'
        }).then((getRes) => {
            setPhotos(getRes.data);
        }).catch((getErr) => {
            console.log('GET Route error:', getErr);
        })
    }

        return (
        <div className="App">
            <Header />
            <GalleryList getGallery={getGallery} photos={photos}/>

            <p>Gallery goes here</p>
            <img src="images/goat_small.jpg"/>
        </div>
    );
}

export default App;
