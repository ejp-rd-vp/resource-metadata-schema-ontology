# resource-metadata-schema-ontology
As part of the European Joint Programme (EJP) for Rare Diseases meta data standards (see https://github.com/ejp-rd-vp/resource-metadata-schema) have been developed for rare disease registries to describe their metadata that will improve the FAIR-ness of these resources. This repository defines the ontology that describes the resource metadata schema based on DCAT 2.0.

## Tools used
This ontology is built using [ROBOT](http://robot.obolibrary.org/). Ensure that ROBOT is installed on your computer as detailed under "1. Getting Started". 

## Ontologies on which the EJP RD Resource Metadata Schema Ontology is based
1. Data Catalog Vocabulary: [DCAT 2](https://www.w3.org/TR/vocab-dcat-2/)
2. Dublin Core: [DCMI Metadata Terms](https://dublincore.org/specifications/dublin-core/dcmi-terms/)
3. Friend of a friend: [FOAF 20140114](http://xmlns.com/foaf/spec/20140114.html)
4. Semanticscience Integrated Ontology:  [SIO](https://raw.githubusercontent.com/micheldumontier/semanticscience/master/ontology/sio/release/sio-release.owl)

These ontologies have been downloaded to the /dependentOntologies directory. In the case Dublin Core we needed to add an ontology IRI as ROBOT complains when an ontology IRI is not present.

## Basic functionality
