for $book in doc("biblioteca.xml")/bib/libro
return <libro>
    {($book/titulo)} <autores>{count($book/autor)}</autores>
</libro>