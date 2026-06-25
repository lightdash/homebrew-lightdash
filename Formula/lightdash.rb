class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3250.0/lightdash-cli-0.3250.0-macos-arm64.tar.gz"
      sha256 "b4b71b4d18afd106c3a5368a0463cd4f86ddfdb5f1a59a0816820c4e143e49e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3250.0/lightdash-cli-0.3250.0-macos-x64.tar.gz"
      sha256 "fd9ca1f85bbd1dcbe84f6cfd733231be7c0229f4225245b8673e7bd50648f9ab"
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
