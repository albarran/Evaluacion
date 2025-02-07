#!/usr/bin/env fish

# Archivo de salida
set output_file "index.md"

# Escribir encabezado en index.md
echo "# Índice de Archivos Markdown" >$output_file
echo "" >>$output_file

# Buscar archivos .md excepto README.md
for file in *.md
    if test "$file" != "README.md"
        echo "- [$file]($file)" >>$output_file
    end
end

echo "Archivo 'index.md' generado con éxito."
