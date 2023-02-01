for $book in doc("biblioteca.xml")/bib/libro
return data($book/titulo)