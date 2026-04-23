class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2791.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2791.0/lightdash-cli-0.2791.0-macos-arm64.tar.gz"
      sha256 "667db97ae54e64d1785fcd8ce9498dd708cc591fe1a32943ef8748a06aea18cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2791.0/lightdash-cli-0.2791.0-macos-x64.tar.gz"
      sha256 "34dd3b15f468215663a0307af1641ef43574a6efc9e58987e4ff2f0f22d93997"
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
