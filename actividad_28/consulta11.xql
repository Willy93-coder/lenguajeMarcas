for $book in doc("libreria.xml")/bookstore/book
let $IVA := 0.21
let $price := $book/price
let $total := ($price * $IVA) + $price
order by $total descending
return <books>
    {$book/title}
    {$book/price}
    <totalPlusIVA>{$total}</totalPlusIVA>
</books>
