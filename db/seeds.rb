# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

unless User.first
  user = CreateAdminService.new.call
  puts 'CREATED ADMIN USER: ' << user.email
  # Environment variables (ENV['...']) can be set in the file config/application.yml.
  # See http://railsapps.github.io/rails-environment-variables.html
end

unless MaterialStream.first
  puts 'Loading material streams'
  csv = CSV.open(File.join(Rails.root, 'db', 'seeds', 'material_streams.csv'), :headers => true, :header_converters => :symbol)
  config = csv.to_a.map {|row| row.to_hash }
  config = config.each {|h| h.delete(:parent) }
  MaterialStream.create!(config) do |c|
    puts "Create stream with name: #{c.name}"
  end
end


models = [
  { name: 'organizations', _class: Organization },
  { name: 'container_types', _class: ContainerType },
  { name: 'services', _class: Service },
]

models.each do |model|
  unless model[:_class].first
    puts "Loading #{model[:name]}"
    seed_file = File.join(Rails.root, 'db', 'seeds', "#{model[:name]}.yml")
    config = YAML::load_file(seed_file)

    # Update some fields to association IDs
    config.each do |item|
      puts item
      if item['organization']
        item['organization'] = Organization.find_by_name(item['organization'])
        puts item['organization']
      end
      if item['container_types']
        container_types = ContainerType.all
        container_type_objs = item['container_types'].map do |container_text|
          type = container_types.select { |ct| ct.description == container_text }[0]
        end
        puts container_type_objs
        item['container_types'] = container_type_objs
      end

      puts item
    end

    model[:_class].create!(config) do |c|
      puts "Create item with name: #{c.to_s}"
    end
  else
    puts "#{model[:name]} data already seeded"
  end
end

