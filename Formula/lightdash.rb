class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2836.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.0/lightdash-cli-0.2836.0-macos-arm64.tar.gz"
      sha256 "d3213fa5e4b0d03a86b86fe39ddb425cc30575b1394bf203add004041dfc8c2a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.0/lightdash-cli-0.2836.0-macos-x64.tar.gz"
      sha256 "53cd3a8f8bd7984c182c8fa0c64418a2c52786352421a82e8f1124e225956ffb"
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
