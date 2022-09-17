import GalleryItem from '../GalleryItem/GalleryItem.jsx'

function GalleryList({ getGallery, photos }) {
    return(
        <main className="gallery">
            {photos.map(photo => {
                return(
                    <GalleryItem 
                        key={photo.id} 
                        photo={photo} 
                        getGallery={getGallery} 
                    />
                )
            })}
        </main>
    )
}

export default GalleryList;