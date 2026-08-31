class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.63.0/lightdash-cli-2.63.0-macos-arm64.tar.gz"
      sha256 "bbe3f76779d8cc5ceb0b399a30a854a6c2bd7d9299b4c31cceadae695059661c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.63.0/lightdash-cli-2.63.0-macos-x64.tar.gz"
      sha256 "040994dd691f85b19449183982817fe662777e86c4dad313092de0cda811e9b0"
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
