
Pod::Spec.new do |s|
s.name = 'PomeloNet'
s.version = '1.0.1'
s.license = { :type => "MIT", :file => "LICENSE"}
s.summary = 'A RXSwift&Moya&HandyJSON Networking Tool.'
s.homepage = 'https://github.com/boundlessocean/NetWorking'
s.authors = { 'ocean' => 'boundlessocean@icloud.com' }
s.source = { :git => 'https://github.com/boundlessocean/NetWorking.git',  :tag => s.version.to_s }
s.ios.deployment_target = '10.0'
s.source_files = 'RXNetWorking/Classes/**/*.swift'
s.dependency  'Moya/RxSwift'
s.dependency  'HandyJSON'
s.swift_versions = '5.0'

end
