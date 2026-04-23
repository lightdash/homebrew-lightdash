class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2794.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2794.0/lightdash-cli-0.2794.0-macos-arm64.tar.gz"
      sha256 "57fe5eb6ed4c89c9eb256f2e209648997f40fe89fad8b6081e0ab82466ea92a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2794.0/lightdash-cli-0.2794.0-macos-x64.tar.gz"
      sha256 "2c71068ba656b706588af67f0d9fd7633f9985070888028b31b843add9cd0a26"
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
