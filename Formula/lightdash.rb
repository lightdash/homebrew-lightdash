class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.160.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.0/lightdash-cli-1.160.0-macos-arm64.tar.gz"
      sha256 "237b0397dd2fca09e7f4de4fbf7fea97c37df69343ce7b92b786b5533abed4e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.0/lightdash-cli-1.160.0-macos-x64.tar.gz"
      sha256 "e8469f7d42c41a6f40b7e16b98bf030147f30b1fe6ff7864076ccb84581acdca"
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
