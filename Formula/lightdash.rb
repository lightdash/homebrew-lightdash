class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2194.0/lightdash-cli-0.2194.0-macos-arm64.tar.gz"
      sha256 "3e0bb7f47df9a5a5abc73108fbc48ea95239b4c37a1f7a75a55c158038fb4b40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2194.0/lightdash-cli-0.2194.0-macos-x64.tar.gz"
      sha256 "405978aa67376dad7bdd83c1d088f8e9dffd8b6355f6457bbb17ebc17471a0a6"
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
