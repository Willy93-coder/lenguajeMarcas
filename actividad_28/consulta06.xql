for $book in doc("libreria.xml")/bookstore/book
let $year := (data($book/year))
let $title := (data($book/title))
return  <publicacion>{concat($year, " - ", $title)}</publicacion>