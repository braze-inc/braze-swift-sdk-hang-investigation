Pod::Spec.new do |s|
  s.name              = 'BrazeLocation'
  s.version           = '11.1.1-instrumentation'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.1.1-instrumentation/BrazeLocation.zip',
    :sha256 => '82bb2723842ab4933bbd0f9149bdd1fe91bd9a09eb3bdfc249914c2778da1882'
  }

  s.swift_version               = '5.0'
  s.ios.deployment_target       = '12.0'
  s.tvos.deployment_target      = '12.0'
  s.visionos.deployment_target  = '1.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'
  s.resource_bundles        = { 'BrazeLocation' => ['Sources/BrazeLocationResources/Resources/**/*'] }

  s.dependency 'BrazeKit', '11.1.1-instrumentation'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
