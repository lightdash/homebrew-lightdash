class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.217.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.1/lightdash-cli-2.217.1-macos-arm64.tar.gz"
      sha256 "433c875054ecc642fbe562e7ecd1ffb2772021bb7d4611794d75b1dbe327aa1b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.1/lightdash-cli-2.217.1-macos-x64.tar.gz"
      sha256 "8ad1e1402428a552776b11e34a5ca68e62efd0f71c1e178d035ae13a3128a4a1"
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
