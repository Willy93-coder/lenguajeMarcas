for $book in doc("biblioteca.xml")/bib/libro
where $book/editorial = "Addison-Wesley" and $book/@anyo > 1992
return concat(data($book/titulo), " -> ", data($book/@anyo))