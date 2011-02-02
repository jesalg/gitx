# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{socialcast-git-extensions}
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Sonnek"]
  s.date = %q{2011-02-02}
  s.description = %q{git extension scripts for socialcast workflow}
  s.email = %q{ryan@socialcast.com}
  s.executables = ["git-release-staging", "git-track", "git-start", "git-reset-prototype", "git-integrate", "git-update", "git-wtf", "git-reset-staging", "git-release", "git-prune-merged", "git-promote"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/git-integrate",
    "bin/git-promote",
    "bin/git-prune-merged",
    "bin/git-release",
    "bin/git-release-staging",
    "bin/git-reset-prototype",
    "bin/git-reset-staging",
    "bin/git-start",
    "bin/git-track",
    "bin/git-update",
    "bin/git-wtf",
    "lib/socialcast-git-extensions.rb",
    "socialcast-git-extensions.gemspec",
    "test/helper.rb",
    "test/test_socialcast-git-extensions.rb"
  ]
  s.homepage = %q{http://github.com/wireframe/socialcast-git-extensions}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{git extension scripts for socialcast workflow}
  s.test_files = [
    "test/helper.rb",
    "test/test_socialcast-git-extensions.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<grit>, [">= 0"])
      s.add_runtime_dependency(%q<wireframe-jira4r>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<git_remote_branch>, [">= 0"])
      s.add_runtime_dependency(%q<highline>, [">= 0"])
      s.add_runtime_dependency(%q<socialcast>, [">= 0.3.3"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<grit>, [">= 0"])
      s.add_dependency(%q<wireframe-jira4r>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<git_remote_branch>, [">= 0"])
      s.add_dependency(%q<highline>, [">= 0"])
      s.add_dependency(%q<socialcast>, [">= 0.3.3"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<grit>, [">= 0"])
    s.add_dependency(%q<wireframe-jira4r>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<git_remote_branch>, [">= 0"])
    s.add_dependency(%q<highline>, [">= 0"])
    s.add_dependency(%q<socialcast>, [">= 0.3.3"])
  end
end

