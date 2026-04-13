class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2752.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2752.1/lightdash-cli-0.2752.1-macos-arm64.tar.gz"
      sha256 "49ea78870cbd4494f2cf155d68df645cc3e9608d61caa99d6a5a8aa0b677cc56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2752.1/lightdash-cli-0.2752.1-macos-x64.tar.gz"
      sha256 "cf1ee0605ea29a6863aee88688df0336b9cc0cacb997e06caf2d441406f16399"
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
