class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2852.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2852.0/lightdash-cli-0.2852.0-macos-arm64.tar.gz"
      sha256 "62b1c850d16b6fe07cab94384212e0f769c6dd6af69dd1414eb694044151312e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2852.0/lightdash-cli-0.2852.0-macos-x64.tar.gz"
      sha256 "32089108c050c38dae4bf82abf3a2a749d6fb46c3983e579d05538c048d913ba"
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
