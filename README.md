# Tibetan - English translations catalog

This repository contains code and data listing all the texts translated from Tibetan to English or English to Tibetan.

The process should work as much as possible with identifiers:
- BDRC Work identifier for Tibetan texts
- VIAF or BDRC identifier for persons
- OCLC identifier for English publications

### Methodology

- augment the BDRC - VIAF linking through reconciliation (using OpenRefine)
- leverage the BDRC - VIAF connection to list all English books marked as authored or translated by Tibetan persons on Worldcat
- for each translation, list the BDRC work IDs of the corresponding Tibetan texts

### The VIAF-Worldcat connection

While there is a connection between VIAF and Worldcat to an extent with pages like this:

https://www.worldcat.org/identities/containsVIAFID/23444930

(VIAF ID at the end), it is not possible to pivot programmatically from a VIAF ID to a list of books in English. Instead the pivot can be done using the standard name used in VIAF (MARC `$a`). For instance if you take [VIAF 23444930](https://viaf.org/viaf/23444930/), looking at the [MARC record](https://viaf.org/viaf/23444930/marc21.xml) and taking the first `700$a` (*Cantideva*), we can use it in a search by author and language: https://www.worldcat.org/search?q=au%3ACantideva&inLanguage=eng yielding 23 results. We can then iterate on the `700$a` and find more results.

Unfortunately this seems only partially automatable since Worldcat explicitely forbids that kind of automatic use of their database...