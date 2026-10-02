class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.418.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.418.1/lightdash-cli-2.418.1-macos-arm64.tar.gz"
      sha256 "0f2dda266f8c68f6a95440a99874d246dd30665e3d86edd95a804feadc6573d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.418.1/lightdash-cli-2.418.1-macos-x64.tar.gz"
      sha256 "ac7363f967f23b11db32cfd87e5a32df915042f0dbe2039427d617b07a28cfab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.418.1/lightdash-cli-2.418.1-linux-x64.tar.gz"
    sha256 "4a160811421ae5fddd6655c4df51883cad6a3f30064ce9e8d38a0098fd9f1fd1"

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
