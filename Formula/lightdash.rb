class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2256.0/lightdash-cli-0.2256.0-macos-arm64.tar.gz"
      sha256 "ded25ed1b55c811719ae0169cf078d3895ec0a8710819cea986ed1d7a1c6c7ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2256.0/lightdash-cli-0.2256.0-macos-x64.tar.gz"
      sha256 "32a236dd3d7bd81a86ef0d6c01ce3a92081ba0b9909f212f4fe9964cb0a16a91"
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
