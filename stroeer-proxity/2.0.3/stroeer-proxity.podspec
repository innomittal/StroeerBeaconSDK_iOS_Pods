Pod::Spec.new do |s|

  s.name         = "stroeer-proxity"
 s.version      = "2.0.3"
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
  s.ios.deployment_target = "7.0"

  s.requires_arc = true
  s.xcconfig     = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.frameworks   = 'Foundation', 'UIKit', 'CoreBluetooth', 'CoreGraphics', 'CoreLocation', 'CoreMotion', 'MobileCoreServices', 'AdSupport'

  s.source     = { :git => "git@github.com:StroeerSE/StroeerBeaconSDK_iOS.git", :tag => "v#{s.version}" }    

  s.vendored_frameworks  = 'StroeerProxity.framework'
  s.preserve_paths       = 'StroeerProxity.framework', 'StroeerProxitySDKDemo'
  s.source_files 		 = 'StroeerProxity.framework/Versions/A/Headers/*.h'
  
  s.dependency 'AFNetworking', '~> 3.1'
  s.dependency 'Reachability', '~> 3.2'      
  s.dependency 'MQTTClient', '~> 0.8'
  
end
