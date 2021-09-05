Librarian = Rol.create(name: "Librarian")
Student = Rol.create(name: "Student")

User.create(email: "student@yopmail.com", password: "12345678", rol: Student,name:"Carlos",lastname:"Porte")
User.create(email: "lib@yopmail.com", password: "12345678", rol: Librarian,name:"Susan",lastname:"Polanco")
Novel=Genero.create(name:"Novel")
Literature=Genero.create(name:"Literature")
Virginia=Autor.create(name:"Virginia-Woolf")
Mark=Autor.create(name:"Mark-Twain")
Libro.create(name:"Tom Sawyer",autor:Mark,genero:Novel)
Libro.create(name:"Al Faro",autor:Virginia,genero:Literature)
p "#{User.count} usuarios creados"
p "#{Rol.count} roles creados"
p "#{Libro.count} Libros creados"