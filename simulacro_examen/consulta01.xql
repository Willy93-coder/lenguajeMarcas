for $academy in doc("academia_baile.xml")/academia_baile/baile
return concat(data($academy/profesor), " - ", data($academy/@nombre), " - ", data($academy/precio_clase/@precio))