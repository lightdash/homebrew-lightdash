class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2623.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2623.1/lightdash-cli-0.2623.1-macos-arm64.tar.gz"
      sha256 "a4b8d1cd5c4860fedab9becf3077cbcef4b0b673b1dbeb576cdc4eb7597ef257"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2623.1/lightdash-cli-0.2623.1-macos-x64.tar.gz"
      sha256 "572a3b48ab1878e27c64d2527be5efea37b787279b6f940ed366d41f39e22df7"
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
