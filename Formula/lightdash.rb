class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.3/lightdash-cli-3.128.3-macos-arm64.tar.gz"
      sha256 "0633f62aea48f398081c5be631b5255049c49122d3e7ba62a48378217d2b50a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.3/lightdash-cli-3.128.3-macos-x64.tar.gz"
      sha256 "3b0a0c62a4665858967692a61ba99fc008b4dafd6cec759f96a8d16f36c997f2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.3/lightdash-cli-3.128.3-linux-x64.tar.gz"
    sha256 "b4901d404891eebe945ea2679c014c7fb94987fcef16efd66f5194da6e6b392a"

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
