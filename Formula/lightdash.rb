class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2332.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.2/lightdash-cli-0.2332.2-macos-arm64.tar.gz"
      sha256 "0bf1b2bb0a298efae661fc324004a55d80afc5ca63fe849602e1aaf74ce8a0ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.2/lightdash-cli-0.2332.2-macos-x64.tar.gz"
      sha256 "dec011e4d0233723c8aa0e76614fddda6a6f9574d0f210883032303341dc6957"
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
