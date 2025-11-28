class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2212.0/lightdash-cli-0.2212.0-macos-arm64.tar.gz"
      sha256 "40ced9a530dc52d762c686114af7d7dd2eb0f372e3fefb68cea9fe0dd4abcc00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2212.0/lightdash-cli-0.2212.0-macos-x64.tar.gz"
      sha256 "8bf96501d180cc874b959aa65b1a1ff75a37d5c7f3a6ff3db3f696b308b1ab65"
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
