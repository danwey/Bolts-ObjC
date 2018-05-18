Pod::Spec.new do |s|
  s.name         = 'Bolts'
  s.version      = '1.9.0'
  s.summary      = 'Bolts is a collection of low-level libraries designed to make developing mobile apps easier.'
  s.description  = <<-DESC
                    Bolts was designed by Parse and Facebook for our own internal use, and we have decided to open source these libraries to make them available to others. Using these libraries does not require using any Parse services. Nor do they require having a Parse or Facebook developer account.

                    The first component in Bolts is "tasks", which make organization of complex asynchronous code more manageable. A task is kind of like a JavaScript Promise, but available for iOS and Android.
                   DESC
  s.homepage     = 'https://github.com/BoltsFramework'
  s.authors      = { 'Nikita Lutsenko' => 'nlutsenko@me.com' }
  s.license      = 'BSD'
  s.source       = { :git => 'https://github.com/BoltsFramework/Bolts-ObjC.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ParseIt'
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'Tasks' do |ss|
    ss.source_files = 'Bolts/Common/*.{h,m}'
  end

  s.subspec 'AppLinks' do |ss|
    ss.deployment_target = '8.0'
    ss.dependency 'Bolts/Tasks'

    ss.source_files = 'Bolts/iOS/**/*.{h,m}'
  end
end
