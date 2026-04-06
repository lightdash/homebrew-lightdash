class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2727.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2727.0/lightdash-cli-0.2727.0-macos-arm64.tar.gz"
      sha256 "daa971bccd8d6b71f30a140e06a23d27f3caa04c6c15c5064e89992ab1492241"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2727.0/lightdash-cli-0.2727.0-macos-x64.tar.gz"
      sha256 "3b7e4b7a3380014b2ff204408c4678904b920ab5290b8c792c789d96b51b6bb5"
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
