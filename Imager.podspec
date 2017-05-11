
Pod::Spec.new do |s|
  s.name             = "Imager"
  s.version          = "1.0.0"
  s.summary          = "An image viewer for iOS in Swift"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        An delightful image viewer for iOS in Swift"
                        DESC

  s.homepage         = "https://github.com/Meniny/Imager"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/Imager.git", :tag => s.version.to_s }
  s.social_media_url = 'http://meniny.cn/'

  s.ios.deployment_target = '8.0'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

  s.source_files = 'Imager/Sources/**/*{.swift}','Imager/Resources/**/*'
  s.public_header_files = 'Imager/**/*{.h}'
  s.frameworks = 'Foundation', 'AVKit', 'AVFoundation', 'UIKit'
  s.dependency "Hue"
end
