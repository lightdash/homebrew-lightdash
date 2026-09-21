class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.285.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.285.0/lightdash-cli-2.285.0-macos-arm64.tar.gz"
      sha256 "45d8424d9fe2e3a4fbd89dafa0c6bbb4dfc00f59f726729df8e257f9dddd90a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.285.0/lightdash-cli-2.285.0-macos-x64.tar.gz"
      sha256 "d7b1240e94deff82bf5a4b9e11574bd3869f93643bbcb473a13d4ef87b16ad32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.285.0/lightdash-cli-2.285.0-linux-x64.tar.gz"
      sha256 "416a2454fcf93dd6e7be4f2ad96a49337a867ef25fc96dbe7c1b9908c117b9bb"
    end
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
