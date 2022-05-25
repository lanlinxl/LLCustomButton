#
# Be sure to run `pod lib lint LLCustomButtons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LLCustomButtons'
  s.version          = '1.0.0'
  s.summary          = '<Swift> A custom gradient color, shadow, rounded corner, click button'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lanlinxl/CustomButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lanlin' => 'lanlin0806@icloud.com' }
  s.source           = { :git => 'https://github.com/lanlinxl/CustomButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LLCustomButtons/Classes/**/*'
  s.swift_version = '5.0' 
  

end
