#
# Be sure to run `pod lib lint ALSAlipay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ALSAlipay'
  s.version          = '0.0.1'
  s.summary          = 'This is a short description of ALSAlipay.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a long description of the pod here. This is a long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/AltairEven/ALSAlipay.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AltairEven' => 'qianye.qy@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/AltairEven/ALSAlipay.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ALSAlipay/Frameworks/**/*.{h}'
  s.ios.public_header_files = 'ALSAlipay/Frameworks/**/*.{h}'
  s.ios.vendored_frameworks = 'ALSAlipay/Frameworks/AlipaySDK.framework','ALSAlipay/Frameworks/UTDID.framework'
  s.ios.resources = 'ALSAlipay/Assets/*.bundle'
  s.frameworks = "Security","CoreMotion","CFNetwork","CoreTelephony","SystemConfiguration"
  s.ios.libraries = 'z','c++'
   
  s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/**',
        'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
        'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @loader_path/../Frameworks',
        'ENABLE_BITCODE'           => 'NO'
  }

end
