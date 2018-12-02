PREFIX dc: <http://purl.org/dc/elements/1.1/>
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
prefix skos: <http://www.w3.org/2004/02/skos/core#>
prefix gn: <http://www.geonames.org/ontology#>
prefix schema: <http://schema.org/>
prefix foaf: <http://xmlns.com/foaf/0.1/>
prefix dbo: <http://dbpedia.org/ontology/>

select ?doc ?coverage ?title ?publisher ?name ?description ?event ?eventPage
where {

  ?doc dc:date "1989-08-18"^^xsd:date; dc:title ?title; dc:coverage ?coverage.
  OPTIONAL {
    ?snippet rdfs:member ?doc.
    ?snippet rdf:type schema:Action.
    ?snippet schema:name ?name.
  }
  OPTIONAL {
    ?doc dc:description ?description.
    ?doc dc:publisher ?publisher.
  }
    OPTIONAL {
    ?doc schema:mentions ?event.
    ?event foaf:isPrimaryTopicOf ?eventPage.
  }

}


--------------------------

DESCRIBE <http://dbpedia.org/resource/Waldemar_Franklin_Quintero#Assassination>
