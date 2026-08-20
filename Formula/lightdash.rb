class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.228.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.0/lightdash-cli-1.228.0-macos-arm64.tar.gz"
      sha256 "1a9e629edeb31c28d8b5ac04865e55f96951524ab1b01c114b5b142fa961f306"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.0/lightdash-cli-1.228.0-macos-x64.tar.gz"
      sha256 "7864bf38a5f12274aac6039e5ef3430251e4a1becbb9ac7fb669087f02a95bf9"
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
