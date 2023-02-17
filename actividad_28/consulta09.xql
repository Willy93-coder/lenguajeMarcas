let $book := doc("libreria.xml")/bookstore/book
return <books> {
    for $books in $book
    return <title>{data($books/title)}</title>
} <total>{count($book)}</total>
</books>