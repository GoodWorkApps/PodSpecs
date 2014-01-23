Pod::Spec.new do |s|
  s.name         = "Doubango"
  s.version      = "2.0"
  s.summary      = "SIP stack and telecom library"
  s.description  = <<-DESC
Doubango is a full SIP stack, developed by some guys in France. We will use it for our needs.
                   DESC
  s.homepage     = "http://doubango.org"
  #s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = 'MIT'
  s.author       = { "Gena" => "g.evstratov@gmail.com" }
  s.source       = { :git => "https://github.com/GoodWorkApps/Doubango.git", :tag => "2.0" }

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.requires_arc = false
  s.header_mappings_dir = "doubango/include"

  s.preserve_paths = 'doubango'

  s.libraries    = "tinyDAV", "tinyDEMO", "tinyHTTP", "tinyIPSec", "tinyMEDIA", "tinyMSRP", "tinyNET", "tinyROHC", "tinyRTP", "tinySAK", "tinySDP", "tinySIGCOMP", "tinySIP", "tinySMS", "tinyXCAP"

  s.xcconfig = {
    "LIBRARY_SEARCH_PATHS" => '"$(PODS_ROOT)/Doubango/doubango/build/doubango/Build/Products/Debug-iphonesos"'
  }

  s.public_header_files = 'doubango/include/**/*.h'
end
