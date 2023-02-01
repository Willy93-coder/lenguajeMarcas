for $book in doc("biblioteca.xml")/bib/libro
order by $book/@anyo
return concat(data($book/titulo), " -> ", data($book/@anyo))