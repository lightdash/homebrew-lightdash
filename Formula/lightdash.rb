class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.2/lightdash-cli-0.3009.2-macos-arm64.tar.gz"
      sha256 "80f3a2ad5e97cb33a45bb808718e14c9f1b82eb344c79ce2b410f9fdf53683fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.2/lightdash-cli-0.3009.2-macos-x64.tar.gz"
      sha256 "e535125e7d7e2372e15be22550aa9f00016bf9e95f98f6ea30b0d63fff572383"
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
