class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.1/lightdash-cli-0.2271.1-macos-arm64.tar.gz"
      sha256 "ce7f16d8b25db5757196181f7ad73ac541fd12aa3036a52197087cdd085072e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.1/lightdash-cli-0.2271.1-macos-x64.tar.gz"
      sha256 "4a1588335c1ef93a83ceed5b3e398d72c00fd02f3ea04fc5c1277e9bbd6a3d4c"
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
