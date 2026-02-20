class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2501.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2501.0/lightdash-cli-0.2501.0-macos-arm64.tar.gz"
      sha256 "03ea3a67a184995a07a72886def6e8ca6a5340b688024b588662a6d577060163"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2501.0/lightdash-cli-0.2501.0-macos-x64.tar.gz"
      sha256 "8357d152946f8c259e2fcaecaa5f1865a477676b844c586bd0eb1bfd46de479b"
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
