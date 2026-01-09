class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2325.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.1/lightdash-cli-0.2325.1-macos-arm64.tar.gz"
      sha256 "409b537d3c05a05819f2f2c57a082d74f92279df17e250d615fc6152edb6be6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2325.1/lightdash-cli-0.2325.1-macos-x64.tar.gz"
      sha256 "664fb8617514b365a95b43bb72fe907271b5f8b441d0514e96e1fe3f32d718b7"
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
