class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.198.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.198.1/lightdash-cli-3.198.1-macos-arm64.tar.gz"
      sha256 "baaeb6bdcb4091a12bdf5fe9801407da6fcda75b1a10ff5ff97e93f2684858b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.198.1/lightdash-cli-3.198.1-macos-x64.tar.gz"
      sha256 "0bf27e5055ddb5f0e8248fffd623756238369cdec6610db863c639a3a1522e15"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.198.1/lightdash-cli-3.198.1-linux-x64.tar.gz"
    sha256 "e6a6ba9e9bfdf88154f2c707cf9f45f71027574ec6f3c4c077c4b1cad74ed65b"

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
