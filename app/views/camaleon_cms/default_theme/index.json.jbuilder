# sample request: http://localhost:3000/?format=json
json.extract! current_site, :id, :created_at
json.title current_site.the_title
json.description current_site.the_excerpt
json.url current_site.the_url
json.languages current_site.get_languages
json.post_types current_site.the_post_types.decorate do |post_type|
  json.partial! partial: 'partials/cama_post_type_entry', locals:{ post_type: post_type }
end