#
# Be sure to run `pod lib lint CirclePay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'CirclePay'
  s.version          = '0.1.0'
  s.summary          = 'An Online Payment Solution'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This Software Development Kit allows you to accept online payments provided by many payment getways
  DESC

  s.homepage         = 'https://github.com/Mahmoud3allam/CirclePay'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { 'adel' => 'adelmohy_58@hotmail.com' , 'allam' => 'allam40960@gmail.com' }
  
  
  
  s.source           = { :git => 'https://github.com/Mahmoud3allam/CirclePay.git', :tag => s.version.to_s }

  s.requires_arc = true
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64' }

  s.ios.deployment_target = '12.1'

  s.requires_arc = true
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64' }

  s.ios.vendored_frameworks = 'CirclePaySDK.xcframework'

end
