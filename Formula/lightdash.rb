class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3343.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3343.0/lightdash-cli-0.3343.0-macos-arm64.tar.gz"
      sha256 "3d07e1f938c05169d3b58e299f7615fa2d7954335d91c5a576956993ffa6d6a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3343.0/lightdash-cli-0.3343.0-macos-x64.tar.gz"
      sha256 "caceaace2f7af2529648e3b0b8f197de42277076be92ae0c3e388146903aef11"
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
