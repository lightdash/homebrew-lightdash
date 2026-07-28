class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.16.0/lightdash-cli-1.16.0-macos-arm64.tar.gz"
      sha256 "dc4115f34aee2a776e67cab581182722c7faa5bc3595291ba6b973e41587303c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.16.0/lightdash-cli-1.16.0-macos-x64.tar.gz"
      sha256 "b7012f4cf62c0053eb390a9cfc4cf98708590455500824de21661185e3e79f11"
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
