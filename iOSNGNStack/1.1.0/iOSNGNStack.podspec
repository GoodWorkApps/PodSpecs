Pod::Spec.new do |s|
  s.name         = "iOSNGNStack"
  s.version      = "1.1.0"
  s.summary      = "iOS wrapper for Doubango"
  s.description  = <<-DESC
This is iOS wrapper for Doubango, we will use it as good as we can.
                   DESC
  s.homepage     = "http://doubango.org"
  s.license      = 'MIT'
  s.author       = { "Gena" => "g.evstratov@gmail.com" }
  s.source       = { :git => "https://21b5650b3bc17e44347aeb2fc66c642ceb056cc3@github.com/GoodWorkApps/iOSNgnStack.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = false

  s.source_files = 'Classes/**/*.h', 'Classes/**/*.mm', 'Classes/**/*.m'

  s.library = "sqlite3", "resolv"

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'OpenGLES', 'QuartzCore', 'Foundation', 'CFNetwork', 'CoreAudio', 'AVFoundation', 'AudioToolbox', 'AddressBook', 'CoreGraphics', 'CoreVideo', 'CoreMedia', 'AddressBookUI', 'SystemConfiguration'

  s.dependency 'Doubango', '~> 2.0'
  s.dependency 'TheAmazingAudioEngine'
end
