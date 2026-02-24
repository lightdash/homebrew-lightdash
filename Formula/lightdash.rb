class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2520.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2520.2/lightdash-cli-0.2520.2-macos-arm64.tar.gz"
      sha256 "463572ccb48d119f23621d4674827b5978bae990ade03d9ca8cc7929ccaa101f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2520.2/lightdash-cli-0.2520.2-macos-x64.tar.gz"
      sha256 "d79d56eefc4ec4d47d19129315ba0de129ce33ade2d7474db07465c1ac3491d9"
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
