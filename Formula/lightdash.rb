class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3310.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3310.1/lightdash-cli-0.3310.1-macos-arm64.tar.gz"
      sha256 "7cfe344d345c3eb7aff78d1a4af72fa1b01a9be866b58d934ea503153e5a3fce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3310.1/lightdash-cli-0.3310.1-macos-x64.tar.gz"
      sha256 "af7be1845b71bbe74a4f042e1f96f73edc9169ba39669a3ce92fb29554bceb81"
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
