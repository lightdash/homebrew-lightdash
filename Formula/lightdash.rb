class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3060.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3060.1/lightdash-cli-0.3060.1-macos-arm64.tar.gz"
      sha256 "4bd011b0bb3ca8afb2fa63d26361c6cc61b9ef74a1d5fa3da414e4b1642e776d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3060.1/lightdash-cli-0.3060.1-macos-x64.tar.gz"
      sha256 "e4bbe22dbc7725afed8ed0d6c9d67ab9e29c8e74dc3e4c686cf4f14f815a1c04"
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
