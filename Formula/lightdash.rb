class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.156.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.1/lightdash-cli-2.156.1-macos-arm64.tar.gz"
      sha256 "5f9bae8e31036778e4be9960634e5ef5989bdf66137c1808c5c0bb12d95ebed8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.1/lightdash-cli-2.156.1-macos-x64.tar.gz"
      sha256 "807181bd4db1b99cf7a2651c92f9b12965dc67fe3fad09fcac91bac3d34ff250"
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
