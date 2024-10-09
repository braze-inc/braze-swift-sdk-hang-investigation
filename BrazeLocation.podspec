Pod::Spec.new do |s|
  s.name              = 'BrazeLocation'
  s.version           = '11.0.0-instrumentation'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.0.0-instrumentation/BrazeLocation.zip',
    :sha256 => '6be2caa66b90e481d0608f91102b55394608351fa8d30d6e273487c1de53b2f5'
  }

  s.swift_version               = '5.0'
  s.ios.deployment_target       = '12.0'
  s.tvos.deployment_target      = '12.0'
  s.visionos.deployment_target  = '1.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'
  s.resource_bundles        = { 'BrazeLocation' => ['Sources/BrazeLocationResources/Resources/**/*'] }

  s.dependency 'BrazeKit', '11.0.0-instrumentation'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
