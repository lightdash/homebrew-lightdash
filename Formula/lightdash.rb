class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2261.0/lightdash-cli-0.2261.0-macos-arm64.tar.gz"
      sha256 "0d56afb04bec1e836f5465488001ce24258deaafefc238ed14e5cb7f5c13788c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2261.0/lightdash-cli-0.2261.0-macos-x64.tar.gz"
      sha256 "1b74f842363cbee3005d259811443cf5d0c15d504a4f990e3249c46c9df0a4e8"
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
