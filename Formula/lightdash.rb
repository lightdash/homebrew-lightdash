class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2191.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.2/lightdash-cli-0.2191.2-macos-arm64.tar.gz"
      sha256 "0032f7ed80667b4d2c56b45c12a045207db75244ab315f20cd098fcc9c7ae334"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.2/lightdash-cli-0.2191.2-macos-x64.tar.gz"
      sha256 "ea78a22961012848961ac552fb2fbfb044532c4335662d620dcd06bb7c1fee4c"
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
