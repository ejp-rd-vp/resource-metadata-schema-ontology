#!/usr/bin/env bash
# Script for generating EJP RD resource metadata ontology using robot.sh

#robot.sh extract --method TOP \
#    --input dependentOntologies/dcat2.rdf \
#    --term-file dependentOntologies/dcat2_terms.txt \
#    --output results/dcat2_module.owl

#robot.sh extract --method TOP \
#    --input dependentOntologies/dublin_core_terms.owl \
#    --term-file dependentOntologies/dublin_core_terms.txt \
#    --output results/dublin_core_module.owl
#
#robot.sh  extract --method TOP \
#    --input dependentOntologies/foaf-20140114.rdf \
#    --term-file dependentOntologies/foaf_terms.txt \
#    --output results/foaf_module.owl
#
#robot.sh extract --method BOT \
#    --input dependentOntologies/sio-release.owl \
#    --term-file dependentOntologies/sio_terms.txt \
#    --output results/sio_module.owl
#
#robot.sh extract --method BOT \
#    --input dependentOntologies/duo.owl \
#    --term-file dependentOntologies/duo_terms.txt \
#    --output results/duo_module.owl
#
#robot.sh extract --method TOP \
#    --input dependentOntologies/schemaorg.owl \
#    --term-file dependentOntologies/schemaorg_terms.txt \
#    --output results/schemaorg_module.owl
#
#robot.sh extract --method STAR \
#    --input dependentOntologies/vCard.rdf \
#    --term-file dependentOntologies/vCard.txt \
#    --output results/vcard_module.owl
#
#robot.sh template --template extension/ejprd-schema-template.csv \
#  --ontology-iri "http://purl.org/ejp-rd/vocabulary/ejprd_resource_metadata_ontology.owl"  \
#  --input dependentOntologies/dcat2.rdf \
#  --prefix "ejprd: http://purl.org/ejp-rd/vocabulary/" \
#  --prefix "dcat: http://www.w3.org/ns/dcat#" \
#  --prefix "duo: http://purl.obolibrary.org/obo/" \
#  --prefix "owl:http://www.w3.org/2002/07/owl#" \
#  --prefix "xsd:http://www.w3.org/2001/XMLSchema#" \
#  --prefix "schema:https://schema.org/" \
#  --prefix "vcard:http://www.w3.org/2006/vcard/ns#" \
#  --output extension/extension.owl
#
robot.sh merge --include-annotations true \
  --input extension/extension.owl \
  --input results/dcat2_module.owl \
  --input results/dublin_core_module.owl \
  --input results/foaf_module.owl \
  --input results/sio_module.owl \
  --input results/duo_module.owl \
  --input results/schemaorg_module.owl \
  --input results/vcard_module.owl \
  --output ejprd_resource_metadata_ontology.owl
