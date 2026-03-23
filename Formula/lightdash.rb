class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.1/lightdash-cli-0.2648.1-macos-arm64.tar.gz"
      sha256 "361562046ce47d9bb015c6100b9103fe6f0a5a6b028b6a5661507db59c573278"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.1/lightdash-cli-0.2648.1-macos-x64.tar.gz"
      sha256 "7654e1cc50b76b19de5450fa5b1ba42b67db665d512c0f55ab4bdbbf180cdee1"
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
