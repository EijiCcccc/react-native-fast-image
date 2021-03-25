require 'json'

Pod::Spec.new do |s|

  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
  s.name = "react-native-fast-image"
  s.version = package['version']
  s.summary = "🚩 FastImage, performant React Native image component."

  s.authors = { "Dylan Vann" => "dylan@dylanvann.com" }
  s.homepage = "https://github.com/DylanVann/react-native-fast-image#readme"
  s.license = "MIT"

  s.platform = :ios, "8.0"
  s.framework    = 'UIKit'
  s.requires_arc = true

  s.source = { :git => "https://github.com/DylanVann/react-native-fast-image.git" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'SDRNWebImage'
end