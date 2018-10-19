Pod::Spec.new do |s|
  s.name             = 'TokenDWallet'
  s.version          = '1.0.1'
  s.summary          = 'Wallet utilities for TokenD.'
  s.homepage         = 'https://github.com/tokend/ios-wallet'
  s.author           = { 'Distributed Lab' => 'info@distributedlab.com' }
  s.source           = { :git => 'https://github.com/tokend/ios-wallet.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version    = '4.2'
  s.source_files = 'Sources/TokenDWallet/**/*.swift'
  s.exclude_files = 'Example/*'
  
  s.dependency 'DLCryptoKit', '< 2.0'
end
