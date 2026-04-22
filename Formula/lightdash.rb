class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2777.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2777.0/lightdash-cli-0.2777.0-macos-arm64.tar.gz"
      sha256 "dba53be88768ea44dd048ade8921b9886f229617d9e77ee8fae78ffac172ee1a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2777.0/lightdash-cli-0.2777.0-macos-x64.tar.gz"
      sha256 "3c5bfcca8db597d65d0777247f205280718587b85c11bd46bcf0fc7ead98bff6"
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
