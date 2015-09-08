class VisitorsController < ApplicationController
  def index
    #todo
    headers["Link"] = "<#{root_url}api/doc/>; rel=\"http://www.w3.org/ns/hydra/core#apiDocumentation\""
  end
end
