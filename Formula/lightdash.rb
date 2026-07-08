class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.4/lightdash-cli-0.3328.4-macos-arm64.tar.gz"
      sha256 "eefab76478049294dc3ca9643566ea4fa23f8fa11b06dee5823c3968e304b4c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.4/lightdash-cli-0.3328.4-macos-x64.tar.gz"
      sha256 "b8f6672596f0ba2cb6de1263c4a1a28d0342c1c755c95223d2e5f2555614141b"
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
