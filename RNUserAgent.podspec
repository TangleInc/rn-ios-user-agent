require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNUserAgent"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['repository']['url']
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'
  # git@github.com:mehcode/rn-ios-user-agent.git
  s.source       = { :git => "https://github.com/TangleInc/rn-user-agent.git", :tag => "v#{s.version}" }
  s.source_files  = "RNUserAgent/*.{h,m}"

  s.dependency 'React'
end
