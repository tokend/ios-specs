Pod::Spec.new do |s|
  s.name             = 'DLCryptoKit'
  s.version          = '2.0.2'
  s.summary          = 'Crypto utilities.'
  s.homepage         = 'https://github.com/tokend/ios-crypto-kit'
  s.license          = { type: 'Apache License, Version 2.0', file: 'LICENSE' }
  s.author           = { 'Distributed Lab' => 'dev@distributedlab.com' }
  s.source           = { git: 'https://github.com/tokend/ios-crypto-kit.git', tag: s.version.to_s }
  s.swift_version    = '4.2'
  s.exclude_files    = 'Example/*'

  s.dependency 'DLOpenSSL'

  s.ios.deployment_target = '10.0'

  s.ios.vendored_library = 'Libraries/libsodium/libsodium.a'

  s.ios.source_files = 'Sources/DLCryptoKit/**/*.{swift,h}', 'Libraries/**/*.{swift,h}'
  s.ios.private_header_files = 'Libraries/libsodium/*.h'

  s.preserve_paths = 'Libraries/libsodium/module.modulemap'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Libraries/libsodium'
  }
end
