class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.3/lightdash-cli-0.2764.3-macos-arm64.tar.gz"
      sha256 "65718941ccfba3b5ee3613198bc0a9a81b8ddcac7f35c7f2f0aa47f5bfaae8a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.3/lightdash-cli-0.2764.3-macos-x64.tar.gz"
      sha256 "f0875e8d3bdb6fbea765bb246e9bef263fe13987d79a899cfb5ac82f915a0874"
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
