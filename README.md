# Tibetan - English translations catalog

This repository contains code and data listing all the texts translated from Tibetan to English or English to Tibetan.

The process should work as much as possible with identifiers:
- BDRC Work identifier for Tibetan texts
- VIAF or BDRC identifier for persons
- OCLC identifier for English publications

### Methodology

- augment the BDRC - VIAF linking through reconciliation (using OpenRefine)
- leverage the BDRC - VIAF connection to list all English books marked as authored by Tibetan authors on Worldcat
- for each translation, list the BDRC work IDs of the corresponding Tibetan texts