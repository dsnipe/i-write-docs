# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: i-write-docs 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "i-write-docs"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dmitry Tymchuk"]
  s.date = "2015-09-28"
  s.description = "TODO: longer description of your gem"
  s.email = "dsnipe@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "i-write-docs.gemspec",
    "lib/i-write-docs.rb",
    "lib/i-write-docs/diff_to_html.rb",
    "lib/i-write-docs/doc_filter.rb",
    "lib/i-write-docs/docs_tree.rb",
    "lib/i-write-docs/doff_to_html.rb",
    "lib/i-write-docs/generator.rb",
    "lib/i-write-docs/git_adapter.rb",
    "lib/i-write-docs/markdown_render.rb",
    "lib/i-write-docs/web.rb",
    "lib/i-write-docs/web_helpers.rb",
    "lib/tasks/generator.rake",
    "test/doc_filter_test.rb",
    "test/docs_tree_test.rb",
    "test/generator_test.rb",
    "test/git_adapter_test.rb",
    "test/markdown_render_test.rb",
    "test/test_helper.rb",
    "test/test_i-write-docs.rb",
    "web/assets/css/diff.css",
    "web/views/_nav.erb",
    "web/views/layout.erb",
    "web/views/page.erb"
  ]
  s.homepage = "http://github.com/dsnipe/i-write-docs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "TODO: one-line summary of your gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubytree>, [">= 0"])
      s.add_runtime_dependency(%q<redcarpet>, [">= 0"])
      s.add_runtime_dependency(%q<pygments.rb>, [">= 0"])
      s.add_runtime_dependency(%q<rugged>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<rubytree>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<pygments.rb>, [">= 0"])
      s.add_dependency(%q<rugged>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rubytree>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<pygments.rb>, [">= 0"])
    s.add_dependency(%q<rugged>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<sinatra-contrib>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

