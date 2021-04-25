cask 'microsoft-jdk11' do

  if Hardware::CPU.intel?
    version '11.0.11.9.1'
    sha256 '3f378080a74bce8687a36978d4093b7a585011a527d84e867aa990a9b69e0301'

    url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-x64.pkg"

    pkg "microsoft-jdk-#{version}-macos-x64.pkg"
  end

  name 'Microsoft Build of OpenJDK 11'
  homepage 'https://www.microsoft.com/openjdk/'

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
