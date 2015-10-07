require 'rails_helper'


describe OpenDataCommunities do
  # let(:session) { Collective::Session.new }


  describe OpenDataCommunities::LocalAuthority do
    it "get a single authority contact info" do
      la = OpenDataCommunities::LocalAuthority.find('http://opendatacommunities.org/id/london-borough-council/haringey1')
      puts la.label
      puts la.email
      puts la.telephone
      puts la.home_page
      puts la.contact_page

      puts la.address
      puts la.address.label
    end

    it "get a single authority list of services" do
      la = OpenDataCommunities::LocalAuthority.find('http://opendatacommunities.org/id/london-borough-council/haringey1')
      puts la.label
      la.government_service.to_a.each { |s| puts s.label }
    end

    it 'get a recycling service for one council' do
      d = OpenDataCommunities::GovernmentService.find_by_sparql("
        PREFIX dcterms: <http://purl.org/dc/terms/>
        PREFIX owl: <http://www.w3.org/2002/07/owl#>
        PREFIX qb: <http://purl.org/linked-data/cube#>
        PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
        PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
        PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
        PREFIX schorg: <http://schema.org/>
        SELECT * WHERE {
          ?uri_council schorg:GovernmentService ?uri .
          ?uri owl:sameAs ?esd_serviceURI .
          ?esd_serviceURI dcterms:identifier ?esd_serviceID .
          VALUES ?uri_council { <http://opendatacommunities.org/id/london-borough-council/haringey1> }
          VALUES ?esd_serviceID {'524'}
        }")

      puts d
      puts d.count
      d.each { |s| puts s.label }
    end
  end   
end
