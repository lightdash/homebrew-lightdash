class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.163.0/lightdash-cli-3.163.0-macos-arm64.tar.gz"
      sha256 "87b75c7bc57db4cd7840cfd70cb931c390f77430be5d7650012c8be6217e39cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.163.0/lightdash-cli-3.163.0-macos-x64.tar.gz"
      sha256 "354f08b4d3a0f4ee2b1826c47c24eb29b0edb38ec9f609112dda5fc011d81883"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.163.0/lightdash-cli-3.163.0-linux-x64.tar.gz"
    sha256 "50b0f6bd7fe2513b8de01321e996ae7963e83da5c093d3bf851c954d8529d472"

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
