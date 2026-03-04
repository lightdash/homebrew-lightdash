class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2559.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2559.0/lightdash-cli-0.2559.0-macos-arm64.tar.gz"
      sha256 "5bfe46f3158b2ae8ea885527df77e201d2125a0fbf2524fc7b936835f4fc96f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2559.0/lightdash-cli-0.2559.0-macos-x64.tar.gz"
      sha256 "0f1a9efb1a870078fa08f0a18f4346c041bf40baf89fe69401d5f3fd6d42f232"
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
