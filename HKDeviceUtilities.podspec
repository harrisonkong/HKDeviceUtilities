# Podspec for HKDeviceUtilities
#   Created by Harrison Kong on 2020/02/04

Pod::Spec.new do |s|

  platform                = :ios
  s.ios.deployment_target = '8.0'

  s.name          = 'HKDeviceUtilities'
  s.summary       = 'HK Utilities for UIDevice'
  s.requires_arc  = true
  s.version       = '1.0.0'
  s.license       = { :type => 'MIT' }
  s.author        = { 'Harrison Kong' => 'harrisonkong@skyroute66.com' }
  s.homepage      = 'https://github.com/harrisonkong/HKDeviceUtilities'
  s.source        = { :git => 'https://github.com/harrisonkong/HKDeviceUtilities.git',
                      :tag => '1.0.0' }
  s.framework     = 'UIKit'
  s.source_files  = 'HKDeviceUtilities/**/*.swift'
  s.swift_version = '4.0'

end
