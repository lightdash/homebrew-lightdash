class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.50.0/lightdash-cli-1.50.0-macos-arm64.tar.gz"
      sha256 "893539b8a5be3feb0df0e1fdb187f65e46623918bf211942a3b691f27741f203"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.50.0/lightdash-cli-1.50.0-macos-x64.tar.gz"
      sha256 "f91c50189f38c11c2cd4831e4a8083a7f26eef127076dbbce19222dc60aa5311"
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
