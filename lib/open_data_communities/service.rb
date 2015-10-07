module OpenDataCommunities
  class Service
    include Tripod::Resource

    field :label, RDF::RDFS.label
    field :allowed_by_service, 'http://def.esd.org.uk/allowedByService', :is_uri => true
    field :contained_by, 'http://def.esd.org.uk/containedBy', :is_uri => true, multivalued: true
    field :date_created, 'http://purl.org/dc/terms/created'
    field :date_modified, 'http://purl.org/dc/terms/modified'
    field :description, 'http://purl.org/dc/terms/description'
    field :has_interaction, 'http://def.esd.org.uk/hasInteraction', :is_uri => true
    field :history_note, 'http://www.w3.org/2004/02/skos/core#historyNote'
    field :identifier, 'http://purl.org/dc/terms/identifier'
    field :is_in_scheme, 'http://www.w3.org/2004/02/skos/core#inScheme', :is_uri => true, multivalued: true
    field :is_top_concept_in_scheme, 'http://www.w3.org/2004/02/skos/core#topConceptOf', :is_uri => true
    field :required_by_duty, 'http://def.esd.org.uk/requiredByDuty', :is_uri => true
  end
end

 