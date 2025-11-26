class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2206.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2206.1/lightdash-cli-0.2206.1-macos-arm64.tar.gz"
      sha256 "2853e92c88013c2430454d041bfa1cc79917649369166d4c02df680cfadc0dd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2206.1/lightdash-cli-0.2206.1-macos-x64.tar.gz"
      sha256 "e02fb9f7cc2a37a7320a4d0f8e163648a213ce7553f688e0b2a3871f34d461f3"
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
