class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2917.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.0/lightdash-cli-0.2917.0-macos-arm64.tar.gz"
      sha256 "039d90f3e5042329409aafd4146f39c29e2f7a3c422a43cd2da97a8efcecd98b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.0/lightdash-cli-0.2917.0-macos-x64.tar.gz"
      sha256 "0222aff8e9187e1be21b78b69a170d62f2958db6385b55bb0a5f24f7caf25d30"
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
