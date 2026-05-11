class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2907.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.2/lightdash-cli-0.2907.2-macos-arm64.tar.gz"
      sha256 "ed3d957a2d907e9426839fb327c0e4d61feda2761c40b5e29266b3ac66d6ae05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2907.2/lightdash-cli-0.2907.2-macos-x64.tar.gz"
      sha256 "61043db7ba59ee5b987a11d5580680b30dddb5c65b7d030fc425e48048d722f9"
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
