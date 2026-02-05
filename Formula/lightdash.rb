class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2428.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2428.0/lightdash-cli-0.2428.0-macos-arm64.tar.gz"
      sha256 "e938c699fa19ccf441ae8a9f97cb9318943c474523fa42d5acf0aa369484bb49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2428.0/lightdash-cli-0.2428.0-macos-x64.tar.gz"
      sha256 "d11b0f5b83695a3c28901668f00239a59df3106ac35c596a39c7a7169f58dba9"
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
