class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2854.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2854.0/lightdash-cli-0.2854.0-macos-arm64.tar.gz"
      sha256 "9c60183364eb8fc5e346e1402f909fbd1378ee56f531a23611cfaedb5bd24c63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2854.0/lightdash-cli-0.2854.0-macos-x64.tar.gz"
      sha256 "d577844bcba653c703870965af3a3c0b178e67e0d04b1f82d85f7e459a660828"
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
