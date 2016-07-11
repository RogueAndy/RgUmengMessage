Pod::Spec.new do |s|
s.name             = "RgUmengMessage"
s.version          = "0.1.0"
s.summary          = "友盟消息推送SDK无IDFA版"
s.description      = <<-DESC
It is a marquee view used on iOS, which implement by Objective-C.
DESC
s.homepage         = "https://github.com/RogueAndy/RgUmengMessage"
# s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
s.license          = 'MIT'
s.author           = { "RogueAndy" => "619455850@qq.com" }
s.source           = { :git => "https://github.com/RogueAndy/RgUmengMessage.git", :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/NAME'

s.platform     = :ios, '6.0'
# s.ios.deployment_target = '7.0'
# s.osx.deployment_target = '10.7'
s.requires_arc = true

s.source_files  = "UMeng/*.{h,m}"
# s.resources = 'Assets'

s.public_header_files = "UMeng/*.h"

s.preserve_paths = "UMeng/libUMessage_Sdk_1.3.0.a"
s.library   = "UMessage_Sdk_1.3.0"
s.requires_arc = true
s.xcconfig = { "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/RgUmengMessage/UMeng/" }


end