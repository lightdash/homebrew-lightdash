class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2605.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2605.0/lightdash-cli-0.2605.0-macos-arm64.tar.gz"
      sha256 "e5ee65aeb48e323c7829162320ec92920d5d8b732ae4c65d7cb893675d98312b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2605.0/lightdash-cli-0.2605.0-macos-x64.tar.gz"
      sha256 "f9a0902d5a77cdb44445c80ebfc952b5861545d7f92885238388fe3675d7fa87"
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
