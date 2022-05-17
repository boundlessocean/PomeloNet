
Pod::Spec.new do |s|
s.name = 'RXNetWorking'
s.version = '1.0.0'
s.license = { :type => "MIT", :file => "LICENSE"}
s.summary = 'A RXSwift&Moya Networking Tool.'
s.homepage = 'https://github.com/boundlessocean/pickView'
s.authors = { 'ocean' => 'boundlessocean@icloud.com' }
s.source = { :git => 'https://github.com/boundlessocean/pickView.git',  :tag => s.version.to_s }
s.ios.deployment_target = '10.0'
s.source_files = 'RXNetWorking/Classes/**/*.swift'
s.dependency  'Moya/RxSwift'
s.dependency  'HandyJSON'


end
