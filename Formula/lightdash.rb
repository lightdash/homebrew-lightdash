class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2452.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2452.0/lightdash-cli-0.2452.0-macos-arm64.tar.gz"
      sha256 "85b61d4cb1ba7c4e54b5b00463a873463c1ccdbcac3acb2c993e43cb5209d85a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2452.0/lightdash-cli-0.2452.0-macos-x64.tar.gz"
      sha256 "5e056f474b8f037dca48fc293a3c1930f3d120e0e291fb14236283309e7194dd"
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
