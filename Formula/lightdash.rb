class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.2/lightdash-cli-3.93.2-macos-arm64.tar.gz"
      sha256 "1e9204943668f298c7f19e675ab1252c4fed33ee5a7c31a69e7f6047706a0f05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.2/lightdash-cli-3.93.2-macos-x64.tar.gz"
      sha256 "5e887dc8adbaf472a6e7f7cefaedf7ee776d083a6d448cc923e87de3bd0e53aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.2/lightdash-cli-3.93.2-linux-x64.tar.gz"
    sha256 "c23ba255346a708a3ee125c226a41db9ca154ce06e499f7f98f06af37067657a"

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
