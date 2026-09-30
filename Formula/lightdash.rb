class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.383.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.0/lightdash-cli-2.383.0-macos-arm64.tar.gz"
      sha256 "eea4a9f20d591cc982dce71186fd5e20832c8d76edbb6bb517d4676591b7852e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.0/lightdash-cli-2.383.0-macos-x64.tar.gz"
      sha256 "0a24a7b702ee3608e3d2865bb2804d25dc2590fcb686a28affb4bfcf064afc12"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.383.0/lightdash-cli-2.383.0-linux-x64.tar.gz"
    sha256 "40b014d069a9281e4002ae3834ac5f3351644d8e8de5126d0586e53ac008d741"

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
