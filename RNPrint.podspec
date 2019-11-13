require "json"

json = File.read(File.join(__dir__, "package.json"))
package = JSON.parse(json).deep_symbolize_keys

Pod::Spec.new do |s|
  s.name = "RNPrint"
  s.version = package[:version]
  s.license = { type: "MIT" }
  s.homepage = "https://stride-it.com/"
  s.authors = package[:author]
  s.summary = package[:description]
  s.source = { :git => "https://github.com/CaldeDaniele/react-native-print", :tag => "master" }
  s.source_files = "ios/**/*.{h,m,swift}"
  s.platform = :ios, "9.0"
  s.swift_version = "4.2"
  s.dependency "React"
end
