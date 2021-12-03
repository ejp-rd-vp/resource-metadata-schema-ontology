# resource-metadata-schema-ontology
As part of the European Joint Programme (EJP) for Rare Diseases resource metadata standards, the [resource metadata schema](https://github.com/ejp-rd-vp/resource-metadata-schema/tree/henriette_develop) has been developed for rare disease registries to describe their metadata that will improve the FAIR-ness of these resources. This repository defines the ontology that describes the resource metadata schema based on DCAT 2.0.

## Tools used
This ontology is built using [ROBOT](http://robot.obolibrary.org/). Ensure that ROBOT is installed on your computer as detailed under "1. Getting Started". 

## Ontologies on which the EJP RD Resource Metadata Schema Ontology is based
1. Data Catalog Vocabulary: [DCAT 2](https://www.w3.org/TR/vocab-dcat-2/)
2. Dublin Core: [DCMI Metadata Terms](https://dublincore.org/specifications/dublin-core/dcmi-terms/)
3. Friend of a friend: [FOAF 20140114](http://xmlns.com/foaf/spec/20140114.html)
4. Semanticscience Integrated Ontology:  [SIO](https://raw.githubusercontent.com/micheldumontier/semanticscience/master/ontology/sio/release/sio-release.owl)

These ontologies have been downloaded to the `/dependentOntologies` directory. In the case of Dublin Core we needed to add the ontology IRI as ROBOT complains when an ontology IRI is not present. The file containing this change is stored as `/dependentOntologies/dublin_core_terms.owl`.

## Basic steps taken to create the ontology.
The `generateOntology.bat` file can be run to generate the ontology. The basic steps are the following:
1. For each of the ontologies used a related `{OntologyName}_terms.txt` file exists which contains the terms that are used in the resource metadata schema from that ontology.
2. ROBOT is used to extract these models into the `results` directory `{OntologyName}_module.owl` files. 
3. The Biobank, PatientRegistry and Guideline classes are added using ROBOT to create the `/extension/extension.owl` file.
4. ROBOT is used to merge the `/results/{OntologyName}_module.owl` files and the `/extension/extension.owl` into the `ejprd_resource_metadata_ontology.owl` containing the EJP RD resource metadata schema ontology.

 
