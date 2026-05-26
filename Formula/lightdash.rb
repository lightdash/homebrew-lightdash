class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3022.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.1/lightdash-cli-0.3022.1-macos-arm64.tar.gz"
      sha256 "964b43f2bb2c5ed6446f84972ebfb15035e4b1069b0f6b4406e5c4a4c9331c88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.1/lightdash-cli-0.3022.1-macos-x64.tar.gz"
      sha256 "750e45db6d919c4b542b2827c9644264ffebef2091aad5a3e1406faaa93cb803"
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
