class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.69.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.69.1/lightdash-cli-1.69.1-macos-arm64.tar.gz"
      sha256 "516b2a9b2932df1f1e73a69fa1df8a7a2d2e9aa854465142f8f65c79dc168e22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.69.1/lightdash-cli-1.69.1-macos-x64.tar.gz"
      sha256 "67a39a22271e56f31d5ed492e52a7603144993700bedb9c5f695519fa521cca2"
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
