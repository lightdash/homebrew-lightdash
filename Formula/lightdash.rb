class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3196.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3196.1/lightdash-cli-0.3196.1-macos-arm64.tar.gz"
      sha256 "f3a4836e611272765bca382fb21c3e9256c5faad4b24e4aa48c3d544583adc83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3196.1/lightdash-cli-0.3196.1-macos-x64.tar.gz"
      sha256 "7a88a79e7533c79a271b89e372a2d555821c6cec1d34408c1b7aa258a3837a7c"
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
