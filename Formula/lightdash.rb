class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2526.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2526.0/lightdash-cli-0.2526.0-macos-arm64.tar.gz"
      sha256 "11fe7f9965be4cd48adc692d060b69fa00632abc3585b3b5fd5845f8f024f512"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2526.0/lightdash-cli-0.2526.0-macos-x64.tar.gz"
      sha256 "c748db215eaf91abfa99248ecd2060f5c84d9b47aa56857d743bae10002b2e5a"
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
