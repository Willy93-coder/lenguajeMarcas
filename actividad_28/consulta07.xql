for $book in doc("libreria.xml")/bookstore/book
order by $book/@category, $book/title
return data($book)