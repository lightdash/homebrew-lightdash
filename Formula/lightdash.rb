class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.39.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.2/lightdash-cli-1.39.2-macos-arm64.tar.gz"
      sha256 "487e1adca0d7bcb90033b9a6b72c47bf3af7e7930a9440c816da621c3b40f7d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.2/lightdash-cli-1.39.2-macos-x64.tar.gz"
      sha256 "c57b5382b4c181772b5bdbf02c5b2aa0445ff6db4bba0ff3b9b2e0537e9acb1f"
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
