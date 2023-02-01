for $book in doc("biblioteca.xml")/bib/libro
where $book/precio = 65.95
return $book