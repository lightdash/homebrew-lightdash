class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.91.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.91.0/lightdash-cli-2.91.0-macos-arm64.tar.gz"
      sha256 "895426cc483376ac2a38cbb5d9a99ee5ce1729c632a735116e24954bd0d4fce6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.91.0/lightdash-cli-2.91.0-macos-x64.tar.gz"
      sha256 "edf415e421277382d4828fde7dd9f43f54c9f2a9d3e42b58241cac72c770b41b"
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
