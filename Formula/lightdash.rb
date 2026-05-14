class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2941.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2941.0/lightdash-cli-0.2941.0-macos-arm64.tar.gz"
      sha256 "0b18040178e12ac8fd265403f59df4faad7cad78ba4a6368b345a5a46e0eecc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2941.0/lightdash-cli-0.2941.0-macos-x64.tar.gz"
      sha256 "729e4c4b2e2b670e3131e59c063e6c547afdaf333020b7bae6041ba49b8c46cf"
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
