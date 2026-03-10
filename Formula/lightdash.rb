class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2592.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.2/lightdash-cli-0.2592.2-macos-arm64.tar.gz"
      sha256 "73d7137304d666899d860101ba2988c34aa9d5f21bb3551b6ffba9e9bcf0e9c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.2/lightdash-cli-0.2592.2-macos-x64.tar.gz"
      sha256 "04586dd10016871e3d539caad81f192acbdc5ab0e644cc304a683bc4d3c3f81d"
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
