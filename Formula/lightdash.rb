class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2626.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2626.0/lightdash-cli-0.2626.0-macos-arm64.tar.gz"
      sha256 "c09599ac13bd0fcfeed0fefcdb82cff7e4ac5c2a3e76e88168384c04e91e3544"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2626.0/lightdash-cli-0.2626.0-macos-x64.tar.gz"
      sha256 "c0abff2a1775133f24371dba959b63bbb2fe9ef055723cccd2a64175b12e8fbe"
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
