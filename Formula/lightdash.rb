class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2204.0/lightdash-cli-0.2204.0-macos-arm64.tar.gz"
      sha256 "66725bbff5501ead660e166c605031e86e5a1ad39867786559332a41425ef9ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2204.0/lightdash-cli-0.2204.0-macos-x64.tar.gz"
      sha256 "f5e45c96b72411d6dcd651f2d9927a1f3fcb5439087c9364baf8f61da735fa48"
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
