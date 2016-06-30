Pod::Spec.new do |s|

  s.name         = "stroeer-proxity"
 s.version      = "1.7.0"
  s.summary      = "Ströer Proxity SDK"
  s.homepage     = "http://www.bluloc.com"

  s.author       = { "René Fischer" => "rene.fischer@favendo.com" }

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

  s.source     = { :git => "git@gitlab.match2blue.com:iOS/bluloc-stroeer-sdk.git", :tag => "v#{s.version}" }    

  s.vendored_frameworks  = 'StroeerProxity.framework'
  s.preserve_paths       = 'StroeerProxity.framework', 'StroeerProxitySDKDemo'
  s.public_header_files  = 'StroeerProxity.framework/Versions/A/Headers/*.h'
  
  s.dependency 'AFNetworking', '~> 3.1'
  s.dependency 'PDKeychainBindingsController', '~> 0.0.1'
  s.dependency 'Reachability', '~> 3.2'      
  s.dependency 'Realm', '~> 0.103'
  s.dependency 'EasyMapping', '~> 0.17'  
  s.dependency 'MQTTClient', '~> 0.7'
  
end
