class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.167.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.2/lightdash-cli-2.167.2-macos-arm64.tar.gz"
      sha256 "03aad6999b259e85f5dc2578e6fc0e913bb7e8730bdc51b15bb891ddd9075978"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.2/lightdash-cli-2.167.2-macos-x64.tar.gz"
      sha256 "8fddc3c9e0a3f8752f1ea244f60b5fc6e58f84c9c64595fbac5c2319a8f1b914"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
