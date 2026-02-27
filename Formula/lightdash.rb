class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2540.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.1/lightdash-cli-0.2540.1-macos-arm64.tar.gz"
      sha256 "94ec2aab2b3f0847975240a64b3847e8e0ea32e24db5ddcbf8beb3bcb28e38e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.1/lightdash-cli-0.2540.1-macos-x64.tar.gz"
      sha256 "996912b7a7d16ec1633a824f56e40afee2d580c038cccb0d9048f3f29c1669ec"
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
