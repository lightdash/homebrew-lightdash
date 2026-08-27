class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.28.0/lightdash-cli-2.28.0-macos-arm64.tar.gz"
      sha256 "4d0ba3b0ff6d210ff197d040c6fc7a90604f34f9324d869c212856c2c9cd2507"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.28.0/lightdash-cli-2.28.0-macos-x64.tar.gz"
      sha256 "32039ea3a2dc98f3934277a2412a719587b7b308086a213c4c601059268db29a"
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
