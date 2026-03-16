class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2624.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2624.0/lightdash-cli-0.2624.0-macos-arm64.tar.gz"
      sha256 "6f31c7fc28a5d19220b35fdc95e2da3962ae5d3cbd0b3bebf1303bb61f5cbc41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2624.0/lightdash-cli-0.2624.0-macos-x64.tar.gz"
      sha256 "98d128c95ac199212a924da4eaaaddd988ce388d4ebe0c7dbfd296c10b732492"
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
