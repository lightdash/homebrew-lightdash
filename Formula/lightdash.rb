class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2349.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2349.0/lightdash-cli-0.2349.0-macos-arm64.tar.gz"
      sha256 "65f3ea53afabe25c4b7a7c1b366fb9dd777dfb15275179fd68564c1d861cec0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2349.0/lightdash-cli-0.2349.0-macos-x64.tar.gz"
      sha256 "a4f39c3d84a2828be73493d5afd06e11d8cba1937aa86c40829d47df462fc217"
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
