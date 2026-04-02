class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2718.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2718.0/lightdash-cli-0.2718.0-macos-arm64.tar.gz"
      sha256 "865dc318d5c8c9b0ef4e2ca3911e70dc0efd428935b518b1e703e8a6760a3367"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2718.0/lightdash-cli-0.2718.0-macos-x64.tar.gz"
      sha256 "288b257863ee25ed1c0ff7f0da65bdf4fdd7f05b390b432e2924595787905a60"
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
