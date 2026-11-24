class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.390.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.390.0/lightdash-cli-3.390.0-macos-arm64.tar.gz"
      sha256 "4ede96b9c829ce9ff690bacbbd476492207f0ed58f787d380b132e9c20298ad8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.390.0/lightdash-cli-3.390.0-macos-x64.tar.gz"
      sha256 "71a02ff9aed1b9df1eae0ab1b7ce0e0202055a83e2a42c43fbe5391a7d1e4a54"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.390.0/lightdash-cli-3.390.0-linux-x64.tar.gz"
    sha256 "a1e3be05a941abbb329de45098b5f5e0da902810c9b3d68d54dfd0375de1bf83"

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
