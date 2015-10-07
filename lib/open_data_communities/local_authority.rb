module OpenDataCommunities
  class LocalAuthority
    include Tripod::Resource

    rdf_type 'http://opendatacommunities.org/def/local-government/LocalAuthority'

    field :label, RDF::RDFS.label
    field :email, 'http://schema.org/email'
    field :telephone, 'http://schema.org/telephone'
    field :home_page, 'http://schema.org/url', :is_uri => true
    field :contact_page, 'http://schema.org/ContactPage', :is_uri => true
    field :billing_authority_code, 'http://opendatacommunities.org/def/local-government/billingAuthorityCode'
    field :gss, 'http://data.ordnancesurvey.co.uk/ontology/admingeo/gssCode'
    field :has_census_code, 'http://data.ordnancesurvey.co.uk/ontology/admingeo/hasCensusCode'

    linked_to :address, 'http://schema.org/PostalAddress', class_name: 'OpenDataCommunities::Address'
    linked_to :county, 'http://opendatacommunities.org/def/local-government/county', class_name: 'OpenDataCommunities::County'
    linked_to :government_office_region, 'http://statistics.data.gov.uk/def/administrative-geography/region', class_name: 'OpenDataCommunities::GovernmentOfficeRegion'
    linked_to :government_service, 'http://schema.org/GovernmentService', class_name: 'OpenDataCommunities::GovernmentService', multivalued: true
  end
end

