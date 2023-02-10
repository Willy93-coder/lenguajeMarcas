for $academy in doc("academia_baile.xml")/academia_baile/baile
let $bailes := (data($academy/precio_clase/@precio))
let $sala := (data($academy/sala))
let $cuota := (data($academy/precio_clase/periocidad_cuota))
let $result := $bailes div $cuota
where $result <= 35 and $sala = 2
return (data($academy/@nombre))