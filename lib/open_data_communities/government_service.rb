module OpenDataCommunities
  class GovernmentService
    include Tripod::Resource

    rdf_type 'http://schema.org/GovernmentService'

    field :label, RDF::RDFS.label
    field :date_modified, 'http://purl.org/dc/terms/modified'
    field :home_page, 'http://schema.org/url', :is_uri => true
    field :same_as, 'http://www.w3.org/2002/07/owl#sameAs', :is_uri => true
  end  
end
