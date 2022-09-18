import { useState} from 'react';
import axios from 'axios';

function GalleryItem({ getGallery, photo }) {

    const addSmiles = () => {
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
                {photoTrigger ? <img  className="photoImg" src={photo.path}/> : 
                <>
                    <img  className="photoImg" src={photo.path}/>
                    <p className="tag">{photo.description}</p>
                </>}
            </div>
            <button onClick={addSmiles}>smile</button>
            {photo.smiles === 1 ? <p>This makes me smile!</p> : <p>This brought a smile to {photo.smiles} faces!</p>}
        </section>
    )
}

export default GalleryItem;