#
# Be sure to run `pod lib lint CompositionalLayoutViewControllerFetchableExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CompositionalLayoutViewControllerFetchableExtension'
  s.version          = '0.1.0'
  s.summary          = 'Extensions for CompositionalLayoutViewController with VIPER'
  s.swift_versions   = '5.5'
  s.description      = 'Some extensions for CompositionalLayoutViewController with VIPER.'

  s.homepage         = 'https://github.com/0x0c/CompositionalLayoutViewControllerFetchableExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Akira' => 'akira.matsuda@me.com' }
  s.source           = { :git => 'https://github.com/0x0c/CompositionalLayoutViewControllerFetchableExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.frameworks = 'UIKit'
  s.dependency 'CompositionalLayoutViewControllerExtension', '>= 0.1.1'

  s.subspec 'SwiftConcurrency' do |ss|
    ss.source_files = 'Sources/SwiftConcurrency/*'
  end
  s.subspec 'Promises' do |ss|
    ss.source_files = 'Sources/Promises/*'
    ss.dependency 'PromisesSwift', '>= 2.0.0'
  end
end
