#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint aliyun_log_dart_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'aliyun_log_dart_sdk'
  s.version          = '1.1.2'
  s.summary          = 'Aliyun Log Service for dart & flutter.'
  s.description      = <<-DESC
Aliyun Log Service for dart & flutter.
                       DESC
  s.homepage         = 'https://help.aliyun.com/zh/sls/developer-reference/log-service-sdk-for-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'aliyunsdk' => 'aliyunsdk@aliyun.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'AliyunLogProducer', '3.1.19'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end