Pod::Spec.new do |s|
  s.name             = 'TokenDWallet'
  s.version          = '3.1.3'
  s.summary          = 'Wallet utilities for TokenD.'
  s.homepage         = 'https://github.com/tokend/ios-wallet'
  s.license          = { type: 'Apache License, Version 2.0', file: 'LICENSE' }
  s.author           = { 'Distributed Lab' => 'dev@distributedlab.com' }
  s.source           = { git: 'https://github.com/tokend/ios-wallet.git', tag: s.version.to_s }
  s.swift_version    = '4.2'
  s.source_files     = 'Sources/TokenDWallet/**/*.swift'
  s.exclude_files    = 'Example/*'

  s.dependency 'DLCryptoKit', '>= 2.0.2'

  s.ios.deployment_target = '10.0'
end
