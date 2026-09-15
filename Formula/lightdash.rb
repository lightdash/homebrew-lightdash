class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.215.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.2/lightdash-cli-2.215.2-macos-arm64.tar.gz"
      sha256 "0b8881920717a768854bf168c93fe3056aa6b9d2961e18cfaadbbc47074edb33"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.2/lightdash-cli-2.215.2-macos-x64.tar.gz"
      sha256 "5e8f23ce65022dedabf62380dabebec3d752b38ea172e22c1402ed0bc609341d"
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
