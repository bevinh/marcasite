require_relative "lib/marcasite/version"

Gem::Specification.new do |spec|
  spec.name        = "marcasite"
  spec.version     = Marcasite::VERSION
  spec.authors     = ["bevin_hernandez"]
  spec.email       = ["bevin.hernandez@gmail.com"]
  spec.homepage    = "http://www.cognitive-foundry.com"
  spec.summary     = "Marcasite Engine"
  spec.description = "A website builder for Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bevinh/test_engine/tree/main"
  spec.metadata["changelog_uri"] = "https://github.com/bevinh/test_engine/blob/main/changelog.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
  spec.add_dependency "friendly_id", "~> 5.4"
end
