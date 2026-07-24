class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3476.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3476.0/lightdash-cli-0.3476.0-macos-arm64.tar.gz"
      sha256 "9aac73fcb853d430e95aefdd7324b2e49fc4fe4aa5774b2aaae10269861292ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3476.0/lightdash-cli-0.3476.0-macos-x64.tar.gz"
      sha256 "9aadfb12d0c9c82f13fb67fc54e8f5c8702292ed7afa27438a85270f85a7ac51"
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
