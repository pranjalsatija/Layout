#
# Be sure to run `pod lib lint Layout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Layout'
  s.version          = '0.1.4'
  s.summary          = 'A super lightweight Swift DSL for Auto Layout.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Layout lets you create really Swifty Auto Layout constraints using operator overloading and Swift closures.
                       DESC

  s.homepage         = 'https://github.com/pranjalsatija/Layout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pranjalsatija' => 'me@pranj.co' }
  s.source           = { :git => 'https://github.com/pranjalsatija/Layout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Layout/Classes/**/*'
  s.swift_version = '4.2'
end
