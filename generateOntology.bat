:: Windows script for generating EJP RD resource metadata ontology using ROBOT
call robot extract --method BOT ^
    --input dependentOntologies\dcat2.rdf ^
    --term-file dependentOntologies\dcat2_terms.txt ^
    --output results\dcat2_module.owl
	
call robot extract --method BOT ^
    --input dependentOntologies\dublin_core_terms.owl ^
    --term-file dependentOntologies\dublin_core_terms.txt ^
    --output results\dublin_core_module.owl	
	
call robot extract --method BOT ^
    --input dependentOntologies\EDAM.owl ^
    --term-file dependentOntologies\edam_terms.txt ^
    --output results\edam_module.owl		
	
call robot extract --method BOT ^
    --input dependentOntologies\foaf-20140114.rdf ^
    --term-file dependentOntologies\foaf_terms.txt ^
    --output results\foaf_module.owl
	
call robot extract --method BOT ^
    --input dependentOntologies\sio-release.owl ^
    --term-file dependentOntologies\sio_terms.txt ^
    --output results\sio_module.owl	


call robot template --template extension\ejprd-schema-template.csv ^
  --ontology-iri "http://purl.org/ejp-rd/vocabulary/ejprd_resource_metadata_ontology.owl"  ^
  --input dependentOntologies\dcat2.rdf ^
  --prefix "ejprd: http://purl.org/ejp-rd/vocabulary/" ^
  --prefix "dcat: http://www.w3.org/ns/dcat#" ^
  --output extension\extension.owl
  
call robot merge --include-annotations true ^
  --input extension\extension.owl ^
  --input results\dcat2_module.owl ^
  --input results\dublin_core_module.owl ^
  --input results\edam_module.owl ^
  --input results\foaf_module.owl ^
  --input results\sio_module.owl ^
  --output ejprd_resource_metadata_ontology.owl  