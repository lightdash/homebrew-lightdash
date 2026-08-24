class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.243.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.1/lightdash-cli-1.243.1-macos-arm64.tar.gz"
      sha256 "0f6e1ebbc1d713a53d64cb61330d799f1c229e28f94c0cf75ec3f19948659419"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.1/lightdash-cli-1.243.1-macos-x64.tar.gz"
      sha256 "0bc92219fe57ed809a858afb9d7e329fd270aab85cdec1b3a872afd7879b75dd"
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
