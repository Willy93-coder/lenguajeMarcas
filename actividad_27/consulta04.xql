for $book in doc("biblioteca.xml")/bib/libro
order by $book/@anyo < 2000
return $book