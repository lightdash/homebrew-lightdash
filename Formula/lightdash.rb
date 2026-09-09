class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.179.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.179.0/lightdash-cli-2.179.0-macos-arm64.tar.gz"
      sha256 "7059e54ce9ae4548b20b6a8a350f30b6c6b7113b740fa948d96311972bad51d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.179.0/lightdash-cli-2.179.0-macos-x64.tar.gz"
      sha256 "40c301398a1724b270e2f72dd991f0c8d2716715920f3bc57fd35b95f62b6038"
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
