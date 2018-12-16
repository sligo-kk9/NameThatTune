
Pod::Spec.new do |s|

  s.name         = "NameThatTune"
	s.version      = "0.1.1"
	s.summary      = "Defines a class ThatTrack which contains key information about the current track playing on iTunes"
  s.description  = <<-DESC
										Defines a class ThatTrack which contains key information about the current track playing on iTunes.
                   DESC

  s.homepage     = "https://github.com/sligo-kk9/NameThatTune"

  s.license      = { :type => "MIT", :file => "LICENSE" } 

  s.author             = { "Kay Anderson" => "sligo.kk9@gmail.com" }

  s.platform     = :osx, "10.14"
  s.source       = { :git => "https://github.com/sligo-kk9/NameThatTune.git",
										 :tag => "#{s.version}" }

  s.source_files  = "NameThatTune"

  s.framework  = "ScriptingBridge"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  s.source_files = "NameThatTune/**/*.{swift}"

end
