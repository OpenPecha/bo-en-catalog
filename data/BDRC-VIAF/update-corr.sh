curl 'https://ldspdi.bdrc.io/query/table/BDRC-VIAF?format=csv&pageSize=10000' | tail -n +2 | sed -re 's/^"bdr:(.*)"$/\1/g' | sed -re 's/","viaf:/,/' | sort > BDRC-VIAF.csv