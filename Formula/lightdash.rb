class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.3/lightdash-cli-0.2251.3-macos-arm64.tar.gz"
      sha256 "c98d41229e8d913dfeee26bb6d3d7d5d11697eb94a72c8a5cc5b307a6553ad51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.3/lightdash-cli-0.2251.3-macos-x64.tar.gz"
      sha256 "c67e8ad8703bcf9631718e0b503a737022e54c875924137ed7a0ce465a4c9f3e"
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
