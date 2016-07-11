#
#  Be sure to run `pod spec lint UMessage.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  These will help people to find your library, and whilst it
#  can feel like a chore to fill in it's definitely to your advantage. The
#  summary should be tweet-length, and the description more in depth.
#

s.name         = "RgUmengMessage"
s.version      = "0.1.9"
s.summary      = "友盟消息推送SDK无IDFA版"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description  = <<-DESC
友盟消息推送SDK无IDFA版
1.2.5 主要更新：
添加tag数量上限从64个提高到1024个。
1.2.3 主要更新：
更新了日志发送策略
1.2.2 主要更新：
新增setalias接口，使用的时候可以移除该alias绑定的历史设备。
新增SetUniqueID接口，允许用户以自定义的唯一标记来替换友盟SDK中目前使用的OpenUDID的方案。
DESC

s.homepage     = "http://dev.umeng.com/push/ios/integration"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

# s.license      = "MIT (example)"
s.license      = { :type => "Copyright", :text => "Umeng.com , All Rights Reserved." }
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

s.author             = { "UMeng" => "http://www.umeng.com/" }
# Or just: s.author    = "RogueAndy"
# s.authors            = { "RogueAndy" => "619455850@qq.com" }
# s.social_media_url   = "http://twitter.com/NAME"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
s.platform     = :ios, "6.0"

#  When using multiple platforms
# s.ios.deployment_target = "5.0"
# s.osx.deployment_target = "10.7"
# s.watchos.deployment_target = "2.0"
# s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source       = { :git => "https://github.com/RogueAndy/RgUmengMessage.git", :tag => s.version.to_s }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

s.source_files  = "UMessage_Sdk_1.3.0/*.{h,m}"
# s.exclude_files = ""

s.public_header_files = "UMessage_Sdk_1.3.0/*.h"


# ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

# s.resource  = "icon.png"
# s.resources = "Resources/*.png"

s.preserve_paths = "UMessage_Sdk_1.3.0/libUMessage_Sdk_1.3.0.a"


# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#

# s.framework  = "SomeFramework"
# s.frameworks = "SomeFramework", "AnotherFramework"

s.library   = "UMessage_Sdk_1.3.0"
# s.libraries = "iconv", "xml2"


# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

s.requires_arc = true

s.xcconfig = { "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/RgUmengMessage/UMessage_Sdk_1.3.0/" }
# s.dependency "JSONKit", "~> 1.4"

end