class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.1/lightdash-cli-1.146.1-macos-arm64.tar.gz"
      sha256 "9216a5222c63dcb81da2441bd436abf00a6db4764d05fa7f6e3db9220e4fd0a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.1/lightdash-cli-1.146.1-macos-x64.tar.gz"
      sha256 "0f8d5efeee1705cdd4e155c3b4b8f5a0dd9dbc347fe9d3ebf7b2594d91c52d57"
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
