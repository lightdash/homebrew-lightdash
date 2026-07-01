class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3272.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3272.1/lightdash-cli-0.3272.1-macos-arm64.tar.gz"
      sha256 "6cb625f948c395eed67842ba007ed09bdb600764711a086a34b2fc5e648e6d5c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3272.1/lightdash-cli-0.3272.1-macos-x64.tar.gz"
      sha256 "ff9ca8c16375e5e7fd4d00bfd629ae9c73e8994bb6a42d1b06f0bc73aa7dcaf5"
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
