class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2380.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2380.0/lightdash-cli-0.2380.0-macos-arm64.tar.gz"
      sha256 "e34b9e5153a5ccb7a40ac5b28ad653a9520adc6baff345f5ed51e83aeab77856"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2380.0/lightdash-cli-0.2380.0-macos-x64.tar.gz"
      sha256 "a5277d93f9493e4dd6ddc394f5aa5246656ef0ff33814f5d28ecd6ed3fdee550"
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
