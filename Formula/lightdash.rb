class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.320.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.320.0/lightdash-cli-3.320.0-macos-arm64.tar.gz"
      sha256 "a45b84c32fa3a2776e56e4ff7cb5b0c3bc60d01d5f2a471a452f5753611fbe30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.320.0/lightdash-cli-3.320.0-macos-x64.tar.gz"
      sha256 "5fdd9d98041b5b5f71dbf97649287297ffce3a88c58915f412613c4fc0208717"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.320.0/lightdash-cli-3.320.0-linux-x64.tar.gz"
    sha256 "94099eb1171d264083dac46b41a186bc52df825aecac2218e9603251065f8a52"

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
