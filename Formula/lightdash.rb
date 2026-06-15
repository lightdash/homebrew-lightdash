class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3166.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3166.0/lightdash-cli-0.3166.0-macos-arm64.tar.gz"
      sha256 "e5dc2fda74007a6d0f6e75df7c7ed0a1b532b8c9ea7b68aec206639cb3a9e9fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3166.0/lightdash-cli-0.3166.0-macos-x64.tar.gz"
      sha256 "eb2dafe06ec062a9636c07a1e529e46e4c72511337cb68a27d1f55ed6873c5d7"
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
