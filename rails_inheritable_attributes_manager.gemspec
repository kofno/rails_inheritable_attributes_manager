Gem::Specification.new do |s|
  s.name = %q{rails_inheritable_attributes_manager}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan L. Bell"]
  s.date = %q{2010-08-07}
  s.description = %q{Enhances Rails inheritable attributes to ensure that changes to super classes are passed on to the subclasses}
  s.email = %q{ryan.l.bell@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "init.rb",
     "lib/rails_inheritable_attributes_manager.rb",
     "tests/append_after_test.rb",
     "tests/append_around_test.rb",
     "tests/append_before_test.rb",
     "tests/deep_class_hierarchy_test.rb",
     "tests/normal_filter_chain_test.rb",
     "tests/prepend_after_test.rb",
     "tests/prepend_around_test.rb",
     "tests/prepend_before_test.rb",
     "tests/skip_after_test.rb",
     "tests/skip_before_test.rb",
     "tests/skip_test.rb",
     "tests/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/kofno/rails_inheritable_attributes_manager}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Manages inheritable attributes when super classes are re-opened}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, ["= 2.10.2"])
      s.add_development_dependency(%q<redgreen>, ["= 1.2.2"])
      s.add_development_dependency(%q<actionpack>, [">= 2.3.0"])
      s.add_development_dependency(%q<activerecord>, [">= 2.3.0"])
    else
      s.add_dependency(%q<shoulda>, ["= 2.10.2"])
      s.add_dependency(%q<redgreen>, ["= 1.2.2"])
      s.add_dependency(%q<actionpack>, [">= 2.3.0"])
      s.add_dependency(%q<activerecord>, [">= 2.3.0"])
    end
  else
    s.add_dependency(%q<shoulda>, ["= 2.10.2"])
    s.add_dependency(%q<redgreen>, ["= 1.2.2"])
    s.add_dependency(%q<actionpack>, [">= 2.3.0"])
    s.add_dependency(%q<activerecord>, [">= 2.3.0"])
  end
end
