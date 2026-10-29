class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.105.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.105.0/lightdash-cli-3.105.0-macos-arm64.tar.gz"
      sha256 "2e6d4989b4a1ac9b639e1025522ab7733c260ce19d6a70893b9b3a68c90747dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.105.0/lightdash-cli-3.105.0-macos-x64.tar.gz"
      sha256 "6fba9c97bb98f2abe9fcdc293cd598438dd85b819fa25d86362d7ade46d5a51f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.105.0/lightdash-cli-3.105.0-linux-x64.tar.gz"
    sha256 "37b5229e8684f033fe721bb552c4686f7ac09143c89c2686378f45202d985f42"

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
