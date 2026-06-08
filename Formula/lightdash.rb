class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3107.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3107.0/lightdash-cli-0.3107.0-macos-arm64.tar.gz"
      sha256 "ffb182ee761c2a41ba02ada36381c60d36e6f78f0ed8b24ca2dbb89e5e7064df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3107.0/lightdash-cli-0.3107.0-macos-x64.tar.gz"
      sha256 "94d724b80de9c9328f9658a15f3ac678dc2c44861f90c935faf2c91a34a84650"
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
