class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2427.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2427.1/lightdash-cli-0.2427.1-macos-arm64.tar.gz"
      sha256 "14e23ce5d6751e5c0b4f10e25d327366a5be36776e085438b48dc91386d9cf5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2427.1/lightdash-cli-0.2427.1-macos-x64.tar.gz"
      sha256 "24503a004b25599c9f150d6579e3c0843aa667f7d1694fc3c190f82f9faa734e"
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
