class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.336.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.2/lightdash-cli-2.336.2-macos-arm64.tar.gz"
      sha256 "82089d47d3a5debf9ab4832f3ed0c2f2e0af3887c4a324c96c9da484b3636db4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.2/lightdash-cli-2.336.2-macos-x64.tar.gz"
      sha256 "bc4ae4b737ca6ffa8efceab97ac0c0ea061e5104f6683cd6376eaf9320483a9c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.336.2/lightdash-cli-2.336.2-linux-x64.tar.gz"
    sha256 "d0a4d758d3907c8299c3407ddec5d1b7dc2449956f9828b5d2e4e9f5c1f924e5"

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
