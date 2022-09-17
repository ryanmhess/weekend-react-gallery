
function PhotoBox({ photo, setPhotos }) {
    return(
        <section className="photo">
            <img src={photo.path}/>
            <button>Add a smile! 😊</button>
            {photo.smiles === 0 ? <p>This makes me smile!</p> : <p>This makes {photo.smiles} people smile!</p>}
        </section>
    )
}

export default PhotoBox;