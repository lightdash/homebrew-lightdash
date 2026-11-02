class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.118.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.0/lightdash-cli-3.118.0-macos-arm64.tar.gz"
      sha256 "f9e776d01218b8ece9f4446411b2413863e7391967e9826f2330db3ad068a4bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.0/lightdash-cli-3.118.0-macos-x64.tar.gz"
      sha256 "7c55f61a8713507eb0e933a225b86f71e192d80ff11296769d6e37176ff4369b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.118.0/lightdash-cli-3.118.0-linux-x64.tar.gz"
    sha256 "fe8d6322781e44c48a0c6d131c4fc5fc02650d3f3c280857573d2c010653e3db"

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
