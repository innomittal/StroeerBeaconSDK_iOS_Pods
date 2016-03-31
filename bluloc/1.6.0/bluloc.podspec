Pod::Spec.new do |s|

  s.name         = "bluloc"
 s.version      = "1.6.0"
  s.summary      = "SDK for proximity marketing, location-based promotions, indoor navigation, geo notification and much more."
  s.homepage     = "http://www.bluloc.com"

  s.author       = { "René Fischer" => "rene.fischer@match2blue.com" }

  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                © 2015 bluloc GmbH. All rights reserved.
      LICENSE
    }

  s.platform     = :ios
  s.ios.deployment_target = "7.1"

  s.requires_arc = true
  s.xcconfig     = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.frameworks   = 'Foundation', 'UIKit', 'CoreBluetooth', 'CoreGraphics', 'CoreLocation', 'CoreMotion', 'MobileCoreServices'

  s.source     = { :git => "git@github.com:StroeerSE/StroeerBeaconSDK_iOS.git", :tag => "v#{s.version}" }    

  s.vendored_frameworks  = 'bluloc.framework'
  s.preserve_paths       = 'bluloc.framework', 'blulocSDKDemo'
  s.public_header_files  = 'bluloc.framework/Versions/A/Headers/*.h'
  
  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'PESGraph', '~> 0.2.1'
  s.dependency 'PDKeychainBindingsController', '~> 0.0.1'
  s.dependency 'Reachability', '~> 3.2'      
	s.dependency 'Realm', '~> 0.96'	
	s.dependency 'EasyMapping', '~> 0.15'	
  
end
