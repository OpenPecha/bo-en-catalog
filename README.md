# Tibetan - English translations catalog

This repository contains code and data listing all the texts translated from Tibetan to English or English to Tibetan.

The process should work as much as possible with identifiers:
- BDRC Work identifier for Tibetan texts
- VIAF or BDRC identifier for persons
- OCLC identifier for English publications

### Methodology

- augment the BDRC - VIAF linking through reconciliation (using OpenRefine)
- leverage the BDRC - VIAF connection to list all English books marked as authored or translated by Tibetan persons
- for each translation, list the BDRC work IDs of the corresponding Tibetan texts

### The VIAF connection

While there is a connection between VIAF and Worldcat to an extent with pages like this:

https://www.worldcat.org/identities/containsVIAFID/23444930

(VIAF ID at the end), it is not possible to pivot programmatically from a VIAF ID to a list of books in English through the LOC. Fortunately it is through idRef on https://data.idref.fr/yasgui.html