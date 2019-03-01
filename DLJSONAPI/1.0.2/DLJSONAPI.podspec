Pod::Spec.new do |s|
  s.name             = 'DLJSONAPI'
  s.version          = '1.0.2'
  s.summary          = 'DLJSONAPI SDK for iOS.'
  s.homepage         = 'https://github.com/tokend/ios-jsonapi'
  s.license          = { type: 'Apache License, Version 2.0', file: 'LICENSE' }
  s.author           = { 'Distributed Lab' => 'dev@distributedlab.com' }
  s.source           = { git: 'https://github.com/tokend/ios-jsonapi.git', tag: s.version.to_s }
  s.swift_version    = '4.2'
  s.exclude_files    = 'Example/*'

  s.ios.deployment_target = '10.0'

  source_files = 'Sources/Common/**/*.swift',
                 'Sources/Serialization/**/*.swift',
                 'Sources/Strategies/**/*.swift'

  alamofire_plugin_files = 'Sources/Plugins/Alamofire/**/*.swift',
                           'Sources/Common/**/*.swift'

  s.subspec 'Default' do |ss|
    ss.source_files = source_files
  end

  s.subspec 'AlamofirePlugin' do |ss|
    ss.source_files = alamofire_plugin_files
    ss.dependency 'Alamofire'
  end

  s.default_subspecs = 'Default'
end
