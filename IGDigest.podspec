Pod::Spec.new do |s|
  s.name     = 'IGDigest'
  s.version  = '1.2.0'
  s.summary  = 'Message digest formats (MD5, SHA1 and SHA256) and HMAC  + new SHA256-HMAC-WithDataKey.'

  s.homepage = 'https://github.com/mukarev/IGDigest'
  s.author   = { 'Markus Kosmal' => 'mukarev@gmail.com', 'Francis Chong' => 'francis@ignition.hk' }
  s.license  = 'MIT'
  s.source   = { :git => 'https://github.com/mukarev/IGDigest.git', :tag => '1.2.0' }

  s.requires_arc = true
  s.platform = :ios, '5.0'
  s.source_files = 'IGDigest/Digest/*.{m,h}', 'IGDigest/HMAC/*.{m,h}'
end