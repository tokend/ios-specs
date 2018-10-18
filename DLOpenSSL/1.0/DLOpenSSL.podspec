Pod::Spec.new do |s|
  s.name         = "DLOpenSSL"
  s.version      = "1.0"
  s.summary      = "OpenSSL for iOS"
  s.description  = "OpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support. Supports OSX and iOS including Simulator (armv7, armv7s, arm64, i386, x86_64)."
  s.homepage     = "https://github.com/tokend/ios-open-ssl"
  s.source       = { :git => "https://github.com/tokend/ios-open-ssl.git", :tag => "#{s.version}" }
  
  s.authors       =  {}
  
  s.ios.deployment_target   = '10.0'
  s.ios.source_files        = 'include-ios/openssl/**/*.h'
  s.ios.public_header_files = 'include-ios/openssl/**/*.h'
  s.ios.header_dir          = 'openssl'
  s.ios.preserve_paths      = 'lib-ios/libcrypto.a', 'lib-ios/libssl.a'
  s.ios.vendored_libraries  = 'lib-ios/libcrypto.a', 'lib-ios/libssl.a'
  
  s.libraries = 'ssl', 'crypto'
  s.requires_arc = false
end
