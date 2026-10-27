class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.0/lightdash-cli-3.65.0-macos-arm64.tar.gz"
      sha256 "d38bb0cf2af7e82e2fd8350e6b58240d533c93b983d7645bf730ac68be5545c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.0/lightdash-cli-3.65.0-macos-x64.tar.gz"
      sha256 "44a3adf1481be814c347596b9a563341d952c53c22c08d9f99891467ea789c7c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.65.0/lightdash-cli-3.65.0-linux-x64.tar.gz"
    sha256 "027e394fd6ef560e49e3ce5a036c0e3a8a6e4bc6f728eb4e81367c9519e68edf"

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
