class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.301.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.0/lightdash-cli-3.301.0-macos-arm64.tar.gz"
      sha256 "502531f73998ca6443fd4e805ed83c00ee4ab3dcb727ace8a6b60ac649fe11f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.301.0/lightdash-cli-3.301.0-macos-x64.tar.gz"
      sha256 "63bee18736c3a290995dde64144642a92063cc8afdb9215c05be0a68e8661712"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.301.0/lightdash-cli-3.301.0-linux-x64.tar.gz"
    sha256 "8b828e0ff432dc24d074cd927a67fa1472c9661e66cbe028f9c23a3bf7df4b91"

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
