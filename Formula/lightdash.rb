class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.0/lightdash-cli-0.3328.0-macos-arm64.tar.gz"
      sha256 "5e24db5274b47c9ebd2b7696f6cada8e6e97c5687be7883fd3d3dbb67b4b38f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.0/lightdash-cli-0.3328.0-macos-x64.tar.gz"
      sha256 "6b0020aeb19301cf93be448cd501ecfded02a05772dda4f3aca5ee0765969728"
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
