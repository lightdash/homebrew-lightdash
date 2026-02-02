class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2407.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2407.0/lightdash-cli-0.2407.0-macos-arm64.tar.gz"
      sha256 "49c9e44c4ba508aacd5701a5354ce03fe7fdc68388c160eb3ac188bb853260bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2407.0/lightdash-cli-0.2407.0-macos-x64.tar.gz"
      sha256 "ca24dc18ded48bfb7b724dcf3854cbdccf1e6e425d379fa7e20d42ca29f344a7"
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
