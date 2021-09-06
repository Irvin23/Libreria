
Novel=Genero.create(name:"Novel")
Literature=Genero.create(name:"Literature")
Virginia=Autor.create(name:"Virginia-Woolf")
Mark=Autor.create(name:"Mark-Twain")
Libro1=Libro.create(name:"Tom Sawyer 2",autor:Mark,genero:Novel)
Libro2=Libro.create(name:"Al Faro 2",autor:Virginia,genero:Literature)
Inventario.create(cantidad:5,libro:Libro1)
p "#{User.count} usuarios creados"
p "#{Rol.count} roles creados"
p "#{Libro.count} Libros creados"