package imagedb

class ImagenController 
{
    def scaffold = Imagen
    
    def index() 
    { 
        redirect action:list
    }
    
    def showImage = 
    {
        def imagen = Imagen.get( params.id )
        response.outputStream << imagen.screenshot
        response.outputStream.flush()
    }


}
