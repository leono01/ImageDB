package imagedb

class Imagen 
{
    Date    ultimaActualizacion
    Date    fechaCreacion
    byte[]  screenshot

    static constraints = 
    {
        screenshot maxSize:1073741824
    }
}
