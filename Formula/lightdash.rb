class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.184.0/lightdash-cli-1.184.0-macos-arm64.tar.gz"
      sha256 "e09efb92a628aa0521d7896060df47742ba1b0725844c1d044d138a0de9768c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.184.0/lightdash-cli-1.184.0-macos-x64.tar.gz"
      sha256 "c2fd9b7e1fd38e124bc409699105c88ae34c4576f46b0a2cb3e60f55c0dafc04"
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
