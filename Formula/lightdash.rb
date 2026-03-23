class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2656.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2656.0/lightdash-cli-0.2656.0-macos-arm64.tar.gz"
      sha256 "7c4de4e4c50e5d56ea9cfb9bf6ee0a2f2631a20854cf8887720b779257728dc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2656.0/lightdash-cli-0.2656.0-macos-x64.tar.gz"
      sha256 "e0f045bacb0e279344a71aa23624ad66e8fe79a3fe0da4467f19b4a2e1b9eb26"
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
