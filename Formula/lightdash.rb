class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2865.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.1/lightdash-cli-0.2865.1-macos-arm64.tar.gz"
      sha256 "994a8c43fa0767814020d190468a55a8face54bb8287bfeb7a186470936daaaf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.1/lightdash-cli-0.2865.1-macos-x64.tar.gz"
      sha256 "b03e930b42b2d4ea74f9ef2c35d09856f4348205348efbcf68c812743abdd251"
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
