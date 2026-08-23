class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.238.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.238.0/lightdash-cli-1.238.0-macos-arm64.tar.gz"
      sha256 "89ddadd4df5f7093f5ae04b5ed9260cc6c5b11d92eeb093a52f780039d59e487"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.238.0/lightdash-cli-1.238.0-macos-x64.tar.gz"
      sha256 "0f6ce563b7e60cb37c44e7313441a3470c073695f61124953db23291bd7fb595"
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
