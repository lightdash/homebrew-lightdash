class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2711.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2711.0/lightdash-cli-0.2711.0-macos-arm64.tar.gz"
      sha256 "bffd8377f11838a8145ad28d815bfbe80f47661ef808feda137e89184e415d99"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2711.0/lightdash-cli-0.2711.0-macos-x64.tar.gz"
      sha256 "63d2feef8630c8f3d2bd2590fa1eb4de8bbc0d4e9d7212f4f3f84e131c7977bf"
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
