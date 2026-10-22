class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.34.0/lightdash-cli-3.34.0-macos-arm64.tar.gz"
      sha256 "3e9d3af2792176d1b0e1445f6bc62a428c876c6146436795a63496b87dee2d8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.34.0/lightdash-cli-3.34.0-macos-x64.tar.gz"
      sha256 "3cc173b5274a0c1fae9db1a04257fe015e33636e77f4183b21363aedb0a0e8ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.34.0/lightdash-cli-3.34.0-linux-x64.tar.gz"
    sha256 "7f45d877fc371d7cf08e8cc39157aabc811c2e0e783dd06c579511b3e129295f"

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
