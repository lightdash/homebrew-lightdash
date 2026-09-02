class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.83.0/lightdash-cli-2.83.0-macos-arm64.tar.gz"
      sha256 "f664e064ede1330fd161568703fdd6186d6fe84c806e73685f85c212d2c263b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.83.0/lightdash-cli-2.83.0-macos-x64.tar.gz"
      sha256 "6e2f3b2ae494f433a96887e4bdd11d7cb00596d6152efebdf26bb6d4f9cda047"
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
