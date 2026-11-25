class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.409.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.3/lightdash-cli-3.409.3-macos-arm64.tar.gz"
      sha256 "ea277fda4caf453d13f42cad10a70df3ffa7ca3bff7a06ae51571eff94e63da4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.3/lightdash-cli-3.409.3-macos-x64.tar.gz"
      sha256 "d866fd85e090ae6974fc5a46250b201bf647a7c3cc0d0a1583d4aaa0191b87b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.409.3/lightdash-cli-3.409.3-linux-x64.tar.gz"
    sha256 "139cee487b82abeba5eddde41b1009726f9a84d9e6ee6e1bcfbecc4d9edbd74c"

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
