import { useState} from 'react';
import axios from 'axios';

function GalleryItem({ getGallery, photo }) {

    const addHuzzah = () => {
        axios({
            method: 'PUT',
            url: `/gallery/${photo.id}`
        }).then((putRes) => {
            getGallery();
        }).catch((putErr) => {
            console.log('PUT Route error:', putErr);
        })
    }

    const [photoTrigger, setPhotoTrigger] = useState(true);
    
    const clickTrigger = () => {
        setPhotoTrigger(!photoTrigger);
    }

    return(
        <section className="photoBox">
            <div onClick={clickTrigger} className="photo">
                {photoTrigger ? <img  className="photoImg" src={photo.path} title="Click me!"/> : 
                <>
                    <img  className="photoImg" src={photo.path}/>
                    <p className="tag">{photo.description}</p>
                </>}
            </div>
            <button onClick={addHuzzah}>Huzzah!</button>
            {photo.huzzahs === 1 ? <p>Celebrating:  {photo.huzzahs} Huzzah!</p> : <p>Celebrating:  {photo.huzzahs} Huzzahs!</p>}
        </section>
    )
}

export default GalleryItem;