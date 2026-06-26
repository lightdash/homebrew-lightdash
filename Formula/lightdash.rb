class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3255.0/lightdash-cli-0.3255.0-macos-arm64.tar.gz"
      sha256 "8ccff9c6ed98c1982fd43703a65f7918b211a8578b733f1917db4efa4bfc4b53"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3255.0/lightdash-cli-0.3255.0-macos-x64.tar.gz"
      sha256 "e1b2b5fc2a4164350e03da02ed73a50dc73968b61f095a91ed8fa85c3fa7e613"
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
