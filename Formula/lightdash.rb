class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3472.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.1/lightdash-cli-0.3472.1-macos-arm64.tar.gz"
      sha256 "787c42c9d39fb67c81570345221d3024c4f470ef7480f73326c77b5cc22df27d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.1/lightdash-cli-0.3472.1-macos-x64.tar.gz"
      sha256 "1851bf8b2eec4451026709cbf55bf3c3513f04a2a956162acd61d15d5aa29b44"
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
