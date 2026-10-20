class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.6/lightdash-cli-2.631.6-macos-arm64.tar.gz"
      sha256 "67c6a319366da2fd7d12250c66b2518b313648abbea3f17456d2ecefa6d0095b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.6/lightdash-cli-2.631.6-macos-x64.tar.gz"
      sha256 "c16042bd64d27e0b1caac7f0ae9038a39c5b5659f0378c4aba55edcb2f650ae8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.6/lightdash-cli-2.631.6-linux-x64.tar.gz"
    sha256 "481b6168f105d31cbaf27c028c04337174f7a4f1bdcb3e48af1444baadc3e116"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
