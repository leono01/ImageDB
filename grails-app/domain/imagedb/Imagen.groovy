package imagedb

class Imagen 
{
    Date    ultimaActualizacion
    Date    fechaCreacion
    byte[]  screenshot

    static constraints = 
    {
        screenshot maxSize:1073741824
        fechaCreacion nullable: false, min: new Date()
    }
}
