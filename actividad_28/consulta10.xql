let $book := doc("libreria.xml")/bookstore/book
let $min := min($book/price)
let $max := max($book/price)
return concat("Precio máximo: ", $max, " - ", "Precio mínimo: ", $min)