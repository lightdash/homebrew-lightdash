class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3253.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.1/lightdash-cli-0.3253.1-macos-arm64.tar.gz"
      sha256 "b4ae40e4b56178a66bbcbc91a86ccb942cad011097671caa8fe2a6963c21e78e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.1/lightdash-cli-0.3253.1-macos-x64.tar.gz"
      sha256 "176bfe6b112de0375ece0c6bebe5627ef64554543b6a383af57c7e72b8bf7f73"
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
