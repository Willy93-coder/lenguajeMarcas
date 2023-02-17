for $book in doc("libreria.xml")/bookstore/book
return <titulo>{data($book/title)}</titulo>