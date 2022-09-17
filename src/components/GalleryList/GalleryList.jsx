import GalleryItem from '../GalleryItem/GalleryItem.jsx'

function PhotoGallery({ photos, setPhotos }) {
    return(
        <main className="gallery">
            {photos.map(photo => {
                return(
                    <GalleryItem 
                        key={photo.id} 
                        photo={photo} 
                        setPhotos={setPhotos} 
                    />
                )
            })}
        </main>
    )
}

export default PhotoGallery;