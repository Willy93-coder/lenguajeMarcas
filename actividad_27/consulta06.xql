for $book in doc("biblioteca.xml")/bib/libro
where $book[count(autor) < 2]
order by string-join($book/titulo/@anyo)
return concat(data($book/titulo), " -> ", data($book/@anyo))