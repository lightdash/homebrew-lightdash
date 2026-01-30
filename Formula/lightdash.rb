class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2400.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2400.0/lightdash-cli-0.2400.0-macos-arm64.tar.gz"
      sha256 "f26dbebda3a365e5363bff1b2b1d7fd7211285a18edaf5df052bee1a5c4a1c26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2400.0/lightdash-cli-0.2400.0-macos-x64.tar.gz"
      sha256 "683395d45e22cd85cfd61d8309a203af76ea36893fcb514d1c70c809fe812260"
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
