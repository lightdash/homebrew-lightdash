class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3104.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.3/lightdash-cli-0.3104.3-macos-arm64.tar.gz"
      sha256 "48bb713b441bc2c3c5f1330897d6361a589e8aa48ee6d9f05d40a342aa330ef2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.3/lightdash-cli-0.3104.3-macos-x64.tar.gz"
      sha256 "2dc52ca1a96f5c1fdd75db58c31cb4d4cc137e6d85a2965953f7f9efc0867340"
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
