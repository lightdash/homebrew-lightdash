class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.487.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.487.1/lightdash-cli-2.487.1-macos-arm64.tar.gz"
      sha256 "66e0ac3c33f1e4e1f010dfb899677e524a4efa1ff4be708df0d184020786a6c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.487.1/lightdash-cli-2.487.1-macos-x64.tar.gz"
      sha256 "36d17cbea87b28c3f37c44a51af5c1fc87af1de826e44f7ca3f16ed6c2bc0890"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.487.1/lightdash-cli-2.487.1-linux-x64.tar.gz"
    sha256 "dd9f2bfee4ec9dfca05ca203f7e69e41ad804d64147ce77ffc0d1e1f78f7d32b"

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
