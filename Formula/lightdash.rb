class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.187.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.2/lightdash-cli-3.187.2-macos-arm64.tar.gz"
      sha256 "6f50f3edc15d41ea7d8484e9257c0d76233255a703992ee809fadbd1f9fc2a3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.2/lightdash-cli-3.187.2-macos-x64.tar.gz"
      sha256 "b9c4f82254262c436ccc2342ed878527f957858b4f39213aa6abc3c7f3bfd347"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.187.2/lightdash-cli-3.187.2-linux-x64.tar.gz"
    sha256 "806ad1d6d344fb21a2744eaad9140131a58dad701d0e8cc303695fd935e0f386"

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
