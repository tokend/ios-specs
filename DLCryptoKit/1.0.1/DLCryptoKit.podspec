Pod::Spec.new do |s|
  s.name             = 'DLCryptoKit'
  s.version          = '1.0.1'
  s.summary          = 'Crypto utilities.'
  s.homepage         = 'https://github.com/tokend/ios-crypto-kit'
  s.author           = { 'Distributed Lab' => 'info@distributedlab.com' }
  s.source           = { :git => 'https://github.com/tokend/ios-crypto-kit.git', :tag => s.version.to_s }
  s.swift_version    = '4.2'
  s.exclude_files = 'Example/*'
  s.dependency 'DLOpenSSL'
  s.dependency 'libsodium'
  
  s.ios.deployment_target = '10.0'
  s.ios.source_files = 'Sources/DLCryptoKit/**/*', 'Libraries/lib_imports.h'
  s.ios.public_header_files = 'Libraries/lib_imports.h'
  
  s.subspec 'AES256' do |ss|
    ss.source_files = 'Sources/DLCryptoKit/AES256/**/*.swift'
	  ss.source_files = 'Sources/DLCryptoKit/Common/**/*.swift'
    ss.source_files = 'Sources/DLCryptoKit/Utils/**/*.swift'
  end

  s.subspec 'ECDSA' do |ss|
    ss.source_files = 'Sources/DLCryptoKit/ECDSA/**/*.swift'
	  ss.source_files = 'Sources/DLCryptoKit/Common/**/*.swift'
    ss.source_files = 'Sources/DLCryptoKit/Utils/**/*.swift'
  end

  s.subspec 'TokenDKDF' do |ss|
    ss.source_files = 'Sources/DLCryptoKit/TokenDKDF/**/*.swift'
	  ss.source_files = 'Sources/DLCryptoKit/Common/**/*.swift'
    ss.source_files = 'Sources/DLCryptoKit/Utils/**/*.swift'
  end
end
