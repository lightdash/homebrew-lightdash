class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.186.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.1/lightdash-cli-2.186.1-macos-arm64.tar.gz"
      sha256 "a7e01622fd1b7839ea7b9ddc4d93612b52db00c92ef9211b60b6868cce341639"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.1/lightdash-cli-2.186.1-macos-x64.tar.gz"
      sha256 "eae5b287ae644f2a8ed2b11dac7ee466e6ae7331c3ed98bf39dace4b8ca02c94"
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
