class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.167.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.2/lightdash-cli-1.167.2-macos-arm64.tar.gz"
      sha256 "eef7ef452a9f7c3f62fd5bf7f9db7eb2e890c9cdaa2ace93034f744348170aa4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.2/lightdash-cli-1.167.2-macos-x64.tar.gz"
      sha256 "298b6e9328f6f097fd7a87c1a6cfe428cc4a3249b4d0291f75c002dfa4b10733"
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
