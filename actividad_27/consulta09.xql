for $book in doc("biblioteca.xml")/bib/libro
return <result>
    {($book/titulo)}{($book/autor)}
</result>