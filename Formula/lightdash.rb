class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.140.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.140.0/lightdash-cli-1.140.0-macos-arm64.tar.gz"
      sha256 "2fd4593db9c7f69323664fd962e3fbbba67cda574cd4883b556c8c20ef3643a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.140.0/lightdash-cli-1.140.0-macos-x64.tar.gz"
      sha256 "39da8047f135e0e6de779c31e55cfd8cf6bb6d8e1a78cafbcb1a57292309e85b"
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
