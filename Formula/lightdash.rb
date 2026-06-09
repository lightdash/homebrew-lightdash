class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3117.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3117.1/lightdash-cli-0.3117.1-macos-arm64.tar.gz"
      sha256 "3f99e2066b3d2a05a92b668972a598d6e6b0bc501ada4bf4e39a9a080ea30a7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3117.1/lightdash-cli-0.3117.1-macos-x64.tar.gz"
      sha256 "8eb8a0b1227638029dc117113f44ccab18f0b3aca17548a6c4955e266b13d462"
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
