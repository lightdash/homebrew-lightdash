class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.0/lightdash-cli-3.205.0-macos-arm64.tar.gz"
      sha256 "2d5ed6dc41e50e70923ece6079731d2a48b571e75d1e6b572cd7f142f00cf9ab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.205.0/lightdash-cli-3.205.0-macos-x64.tar.gz"
      sha256 "2d2929d642b9d08303ac83c8f4bf172092cb8c3755badca9351336f12df3f0bc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.205.0/lightdash-cli-3.205.0-linux-x64.tar.gz"
    sha256 "bc59ed1d62cd4b5b203e11d4703c8ebc9920cf23c0b257c178f2c93e74a0cda6"

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
