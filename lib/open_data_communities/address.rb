module OpenDataCommunities
  class Address
    include Tripod::Resource

    rdf_type 'http://schema.org/PostalAddress'

    field :label, RDF::RDFS.label
    field :country, 'http://schema.org/addressCountry'
    field :locality, 'http://schema.org/addressLocality'
    field :region, 'http://schema.org/addressRegion'
    field :department, 'http://schema.org/department'
    field :postal_code, 'http://schema.org/postalCode'
    field :street, 'http://schema.org/streetAddress'

    linked_to :organization, 'http://schema.org/Organization', class_name: 'OpenDataCommunities::LocalAuthority'
    linked_to :authority, 'http://opendatacommunities/authority', class_name: 'OpenDataCommunities::LocalAuthority'
  end
end
