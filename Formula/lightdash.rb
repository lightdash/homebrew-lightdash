class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2374.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.1/lightdash-cli-0.2374.1-macos-arm64.tar.gz"
      sha256 "a72f73894db6b6671c6540d807e3cb79e9b7f783a6142b03422e58b535a06d88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.1/lightdash-cli-0.2374.1-macos-x64.tar.gz"
      sha256 "b9af4dfff0394096d49f8d3b34595bc849b58d2b17dce8e42ec5b9ffe8d5c1e4"
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
