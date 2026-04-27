class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2818.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2818.0/lightdash-cli-0.2818.0-macos-arm64.tar.gz"
      sha256 "a7443c66d79ab35d5b5fb021c5940bfb0bb3943e4d81898211619f59d472be19"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2818.0/lightdash-cli-0.2818.0-macos-x64.tar.gz"
      sha256 "3373d9ae11cefed88ca7663bf1ff58c1736eb962d678c97ddb02a2256f66bd4d"
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
