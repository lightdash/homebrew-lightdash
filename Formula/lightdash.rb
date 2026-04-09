class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2741.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2741.1/lightdash-cli-0.2741.1-macos-arm64.tar.gz"
      sha256 "1e0866e5c6d09d86eaa5efecd76dd71858281f7a1cca48915080a2b41c2c861b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2741.1/lightdash-cli-0.2741.1-macos-x64.tar.gz"
      sha256 "bf35107f524881225d5c1f35a04df6a9d72209071b6dfe516210ba53a76a53cd"
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
