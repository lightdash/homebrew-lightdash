class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.481.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.0/lightdash-cli-2.481.0-macos-arm64.tar.gz"
      sha256 "bce650d13e56cc967600a4d973c7edf70b1d06bb46f221b1c686aca92f776749"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.0/lightdash-cli-2.481.0-macos-x64.tar.gz"
      sha256 "52fbb790f533b8d64ef5f6b959b098f3bff78171f682b4c0f70da659741a74f3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.481.0/lightdash-cli-2.481.0-linux-x64.tar.gz"
    sha256 "75022072590ea6132d8a0bcfdc2c1aa121f3435db808f22cae4fbe61ff637bfd"

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
