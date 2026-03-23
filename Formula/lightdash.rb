class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.5/lightdash-cli-0.2648.5-macos-arm64.tar.gz"
      sha256 "6fadc93f04fbdbad6a7bb0e8f1ff666a8d0250d9adfe2c6a8b540ca23f4b925d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.5/lightdash-cli-0.2648.5-macos-x64.tar.gz"
      sha256 "f2f679f858861d0fbe7a798438cba9aa0acfae66b4faecf718073d1009e6bf34"
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
