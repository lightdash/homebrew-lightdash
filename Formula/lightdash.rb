class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3045.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3045.0/lightdash-cli-0.3045.0-macos-arm64.tar.gz"
      sha256 "974368809f543a2d19b7d407f58d6f8bed794dc42026c1476af0f6fd21d2e0c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3045.0/lightdash-cli-0.3045.0-macos-x64.tar.gz"
      sha256 "c888f0cccf7b55ce72e4641b97a10d1d14ce8dc01d0bd8af75d45a0292d8488f"
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
