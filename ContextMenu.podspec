Pod::Spec.new do |spec|
  spec.name         = 'ContextMenu'
  spec.version      = '0.5.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/GitHawkApp/ContextMenu'
  spec.authors      = { 'Ryan Nystrom' => 'rnystrom@whoisryannystrom.com' }
  spec.summary      = 'Context menu inspired by Things 3.'
  spec.source       = { :git => 'https://github.com/GitHawkApp/ContextMenu.git', :tag => spec.version.to_s }
  spec.source_files = 'ContextMenu/*.swift'
  spec.platform     = :ios, '9.0'
  spec.swift_version = '5.0'
end
