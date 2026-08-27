class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.32.0/lightdash-cli-2.32.0-macos-arm64.tar.gz"
      sha256 "8b89abfc126bce9a139abef1958acdcf4f959111c6abf797bf45946188ab210b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.32.0/lightdash-cli-2.32.0-macos-x64.tar.gz"
      sha256 "b7be9271d122ee451c77d1899b018309dddbc26d2788a4221af594015ceb98a1"
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
