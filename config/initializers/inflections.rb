# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'tipo_de_gasto', 'tipos_de_gasto'
  inflect.irregular 'tipo_de_envase', 'tipos_de_envase'
  inflect.irregular 'articulo', 'articulos'
  inflect.irregular 'chofer', 'choferes'
  inflect.irregular 'personal', 'personal'
  inflect.irregular 'cliente', 'clientes'
  inflect.irregular 'sitio', 'sitios'
end
