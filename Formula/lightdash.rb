class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3182.0/lightdash-cli-0.3182.0-macos-arm64.tar.gz"
      sha256 "2ea33e6c17f0bd9b0d22280bdef38f601fcb8e5807cfc13c84ced24dd0180237"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3182.0/lightdash-cli-0.3182.0-macos-x64.tar.gz"
      sha256 "062cd6ba1a262a756b5aef109b37f998cf81ade7c8a2d079d26cc8b052c8116d"
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
