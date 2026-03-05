class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2573.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2573.1/lightdash-cli-0.2573.1-macos-arm64.tar.gz"
      sha256 "62f494f7d7705f7d51ffec2b8cc1f40e5c5e7085d418301059cf17e7a2073ae2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2573.1/lightdash-cli-0.2573.1-macos-x64.tar.gz"
      sha256 "c6e5890461211a0fd13ca3a11d99326ddb964e88d9527fd1de5b9432ff9e546d"
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
