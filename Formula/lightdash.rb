class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2594.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2594.0/lightdash-cli-0.2594.0-macos-arm64.tar.gz"
      sha256 "093ed6b61d2eeb585617880cec3bec00fef67f03fb9b0456bcdee3f49513a1b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2594.0/lightdash-cli-0.2594.0-macos-x64.tar.gz"
      sha256 "90d157386145643ccb81b4f4fcbbc48d2d0ccefe98568d3f8cdff13dd9d918e3"
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
