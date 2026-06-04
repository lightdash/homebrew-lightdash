class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3095.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.1/lightdash-cli-0.3095.1-macos-arm64.tar.gz"
      sha256 "a7e2fecaa79384aea19b072c8db0a725176a7c1b619f64b9fdca1954755160dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.1/lightdash-cli-0.3095.1-macos-x64.tar.gz"
      sha256 "b57d2ad763f8b862b2869aac8fda22aa99d9086fd94d939152016890832d3620"
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
