class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2456.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2456.0/lightdash-cli-0.2456.0-macos-arm64.tar.gz"
      sha256 "c1707257b3f719a652e62c080457435fce899c42dd43e273a1d38b75b47bb813"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2456.0/lightdash-cli-0.2456.0-macos-x64.tar.gz"
      sha256 "d59a94945422fd1a69fbcf615eb8a9324b675261b79a372031a269cf5d2e5bd9"
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
