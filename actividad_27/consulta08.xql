for $book in distinct-values(doc("biblioteca.xml")/bib/libro/autor/apellido)
order by ($book)
return data($book)