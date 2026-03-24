class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2658.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2658.0/lightdash-cli-0.2658.0-macos-arm64.tar.gz"
      sha256 "d2b1e7d609b27d4d17e29965710406dfee53c4bab304edaca2e5700c057d85b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2658.0/lightdash-cli-0.2658.0-macos-x64.tar.gz"
      sha256 "301e3d614b02d9142c7ece8b24e55a0de9550a44e7f9d0db94378e5dfe2470b4"
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
