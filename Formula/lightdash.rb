class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3141.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3141.0/lightdash-cli-0.3141.0-macos-arm64.tar.gz"
      sha256 "a81299e6371e5248388c48a29a597c6f26572fb50a7ed81961fd5e4e24be48f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3141.0/lightdash-cli-0.3141.0-macos-x64.tar.gz"
      sha256 "03bc584aa413f126332b35538a5ec86dfe10fcee228d35a787b380a35f0e9153"
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
