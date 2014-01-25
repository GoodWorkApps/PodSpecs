Pod::Spec.new do |s|
  s.name         = "iOSNGNStack"
  s.version      = "1.0"
  s.summary      = "iOS wrapper for Doubango"
  s.description  = <<-DESC
This is iOS wrapper for Doubango, we will use it as good as we can.
                   DESC
  s.homepage     = "http://doubango.org"
  s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = 'MIT'
  s.author       = { "Gena" => "g.evstratov@gmail.com" }
  s.source       = { :git => "https://github.com/GoodWorkApps/iOSNgnStack.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = false

  s.source_files = 'Classes/**/*.h', 'Classes/**/*.mm', 'Classes/**/*.m'

  s.library = "sqlite3", "resolv"

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'OpenGLES', 'QuartzCore', 'Foundation', 'CFNetworking', 'CoreAudio', 'AVFoundation', 'AudioToolbox', 'AddressBook', 'CoreGraphics', 'CoreVideo', 'CoreMedia', 'AddressBookUI', 'SystemConfiguration'
  s.dependency 'Doubango', '~> 2.0'
end
