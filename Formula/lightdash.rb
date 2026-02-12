class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.2/lightdash-cli-0.2457.2-macos-arm64.tar.gz"
      sha256 "72655fa3c9be39ff32d125f39facd5b4ebc0e597bbb657ef76b287c01d1878b1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.2/lightdash-cli-0.2457.2-macos-x64.tar.gz"
      sha256 "736a0de00f4f31271495acf1ed2ea5e21735e3a398f511ed7b817ed666463141"
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
