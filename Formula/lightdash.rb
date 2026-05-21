class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3001.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3001.0/lightdash-cli-0.3001.0-macos-arm64.tar.gz"
      sha256 "b2357b2ae593a5efa10aa0cd68030d94267e6ccd235871f668537a96570fa43b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3001.0/lightdash-cli-0.3001.0-macos-x64.tar.gz"
      sha256 "b0e5ba54fda88c0b082022a29cfea787a33210ccfd7f4df747fae45ac7c76469"
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
