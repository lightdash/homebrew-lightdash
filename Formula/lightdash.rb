class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2560.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2560.0/lightdash-cli-0.2560.0-macos-arm64.tar.gz"
      sha256 "03dc8dfc90803f56094eef1a0c726b8d5cdd1809d996986b164732e3ed09a7f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2560.0/lightdash-cli-0.2560.0-macos-x64.tar.gz"
      sha256 "e9248908ecbafadf292367048a609e2129db00a93164c18f4d6a76688f9848dd"
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
