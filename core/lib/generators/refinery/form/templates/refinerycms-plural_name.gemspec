# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-<%= plural_name %>'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails <%= plural_name.titleize %> forms-extension for Refinery CMS'
  s.date              = '<%= Time.now.strftime('%Y-%m-%d') %>'
  s.summary           = '<%= plural_name.titleize %> forms-extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency    'refinerycms-core',     '~> <%= Refinery::Version %>'
  s.add_dependency    'refinerycms-settings', '~> <%= [Refinery::Version.major, Refinery::Version.minor, 0].join(".") %>'
  s.add_dependency    'filters_spam', '~> 0.3'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> <%= Refinery::Version %>'

end
