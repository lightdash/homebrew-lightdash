class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.502.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.502.0/lightdash-cli-2.502.0-macos-arm64.tar.gz"
      sha256 "69723ecd360f9e72764063b43cb471ba8daa81abecc142fda7f5b91daed861d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.502.0/lightdash-cli-2.502.0-macos-x64.tar.gz"
      sha256 "ec18fedd8d604451bd99ac95b0aebfd497db7204711af05e0ed378fa41cd2548"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.502.0/lightdash-cli-2.502.0-linux-x64.tar.gz"
    sha256 "bd3f4a7592758673713d7001d40c0d4961d1e22baa7d1cbf50a0e97799e923d5"

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
