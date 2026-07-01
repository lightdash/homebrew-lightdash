class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3277.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3277.0/lightdash-cli-0.3277.0-macos-arm64.tar.gz"
      sha256 "5508d237bfbae2e6542dec1f5ff8eb1566e74b6ba64d0a665480455508964305"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3277.0/lightdash-cli-0.3277.0-macos-x64.tar.gz"
      sha256 "8acd1edd97779d0d82f7523eed1f09218affdad7ce8ed091e770b923f6a27917"
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
