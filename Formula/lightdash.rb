class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.417.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.417.0/lightdash-cli-3.417.0-macos-arm64.tar.gz"
      sha256 "1cc3425208a985905d16b6fb9082544acdff069bf4d997de898ee764a813ff55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.417.0/lightdash-cli-3.417.0-macos-x64.tar.gz"
      sha256 "8e003c6fcf8fc307060ac0208d9a3a30e739c6af068f8103e58b2a46726582b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.417.0/lightdash-cli-3.417.0-linux-x64.tar.gz"
    sha256 "44435392d19ffeb01043fd7d10360de87e01a533c9a4f53b1553679ee2d153b8"

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
