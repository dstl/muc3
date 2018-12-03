--------
PREFIX dc: <http://purl.org/dc/elements/1.1/>
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
prefix skos: <http://www.w3.org/2004/02/skos/core#>
prefix gn: <http://www.geonames.org/ontology#>
prefix schema: <http://schema.org/>
prefix foaf: <http://xmlns.com/foaf/0.1/>
prefix dbo: <http://dbpedia.org/ontology/>

select *
where {

  <http://dbpedia.org/resource/Waldemar_Franklin_Quintero#Assassination> schema:agent ?agent .
  
  OPTIONAL {
    ?agent foaf:accountName ?twitterUser .
  }
}

--------------------------

DESCRIBE <http://dbpedia.org/resource/Waldemar_Franklin_Quintero#Assassination>


-----------

---------
<file://C:/fakepath/DEV-MUC3-0446.txt>web
<file://C:/fakepath/mentions_ttl.txt>web
<file://C:/fakepath/DEV-MUC3-0348.txt>web
<file://C:/fakepath/documents.rdf>web
<file://C:/fakepath/kidnap.rdf>web
<file://C:/fakepath/DEV-MUC3-0349.txt>web
<file://C:/fakepath/explosion.rdf>web
<file://C:/fakepath/publisher.rdf>web
<file://C:/fakepath/assassination.rdf>web
<file://C:/fakepath/TST1-MUC3-0006.txt>web
<file://C:/fakepath/account_ttl.txt>web
<file://C:/fakepath/description.rdf>
