class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3172.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3172.0/lightdash-cli-0.3172.0-macos-arm64.tar.gz"
      sha256 "2bc6aac3ce47d0f6dc0b816093d35bd8ae6139c715e1b31c9152d4b733b9d6f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3172.0/lightdash-cli-0.3172.0-macos-x64.tar.gz"
      sha256 "66da0f229d37aacea012217a54a604fba5b7c9eff63801c42c76b730d2616731"
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
