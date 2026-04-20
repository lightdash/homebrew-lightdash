class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.5/lightdash-cli-0.2764.5-macos-arm64.tar.gz"
      sha256 "fba54976194a7ade412c39ad222eedc59ce7ea046142f106bd50931ccc3fe32e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.5/lightdash-cli-0.2764.5-macos-x64.tar.gz"
      sha256 "575500c998d9d0b97696f620e4e72ba3648bf35cfc07ccba3dd502665dcea124"
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
