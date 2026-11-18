class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.302.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.302.0/lightdash-cli-3.302.0-macos-arm64.tar.gz"
      sha256 "f62ef9fb2d4a77eb443e3872d2e8bfe44aa307eaf1117eedcaa5cd26bd065b25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.302.0/lightdash-cli-3.302.0-macos-x64.tar.gz"
      sha256 "301799e2962f72edc1f226e18607a8d88a6cc31d9a85f7ddcc227d09098d6a7b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.302.0/lightdash-cli-3.302.0-linux-x64.tar.gz"
    sha256 "7931ebec99daa6bd2b1effe091ced1b8760a0623e0dcb38cfb4044aa7e43fd00"

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
