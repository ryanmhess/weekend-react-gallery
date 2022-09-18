import axios from "axios";

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

    return(
        <section className="photoBox">
            <img className="photo" src={photo.path}/>
            <button onClick={addSmiles}>smile</button>
            {photo.smiles === 1 ? <p>This makes me smile!</p> : <p>This brought a smile to {photo.smiles} people!</p>}
        </section>
    )
}

export default GalleryItem;