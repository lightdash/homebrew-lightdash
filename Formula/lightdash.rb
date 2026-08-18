class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.176.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.176.0/lightdash-cli-1.176.0-macos-arm64.tar.gz"
      sha256 "a3b162872b794a79c7691525b38c66c75ca2e8db4084b879c07c12cb8e6f7e32"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.176.0/lightdash-cli-1.176.0-macos-x64.tar.gz"
      sha256 "a107e71538e6fb831b2b2809316a688536f59edd14bf3e19438a5fa8be55cc07"
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
