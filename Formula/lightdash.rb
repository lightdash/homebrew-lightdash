class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2191.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.1/lightdash-cli-0.2191.1-macos-arm64.tar.gz"
      sha256 "ed194d2c411dd79f0d2d7a1f76422b8187c9fe868f73c17d804e630815ee8552"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.1/lightdash-cli-0.2191.1-macos-x64.tar.gz"
      sha256 "c2ba299e0f916f6ab110cb2ddeb7b777999d7b70db24208efea0b89b5d64cc5c"
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
