class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.0/lightdash-cli-0.2182.0-macos-arm64.tar.gz"
      sha256 "ee3d975c8809d070b7f9b5295dd3d14dfee8676a84ce4143d5cffeb7229ab4de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.0/lightdash-cli-0.2182.0-macos-x64.tar.gz"
      sha256 "3d940d77fecb1bfa7fa629845e7db93911ac3c0693c6109f07e72c0c0acb4780"
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
