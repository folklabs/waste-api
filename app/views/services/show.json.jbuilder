json.set! "@type", "WasteService"
json.extract! @service, :id, :name, :frequency, :esd_id

json.provider do
  json.set! "@type", "Organization"
  json.name @service.organization.name
end

