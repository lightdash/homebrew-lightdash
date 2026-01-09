class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2319.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2319.0/lightdash-cli-0.2319.0-macos-arm64.tar.gz"
      sha256 "4c91e36675c3ca0517474fa1d782922b649c271b27b639d44f839185d25d8d48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2319.0/lightdash-cli-0.2319.0-macos-x64.tar.gz"
      sha256 "7a8369de84e41ec4484bbf95b8d36a311ce3d3a3dd94b72dd0dfcedf63306f91"
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
