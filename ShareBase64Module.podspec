
Pod::Spec.new do |s|
  s.name         = "ShareBase64Module"
  s.version      = "1.0.0"
  s.summary      = "ShareBase64Module"
  s.description  = "sharing files base64"
  s.homepage     = "homepage"
  s.license      = "MIT"
  s.author             = { "author" => "author" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "source", :tag => "master" }
  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"

end

  