class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.89.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.89.0/lightdash-cli-3.89.0-macos-arm64.tar.gz"
      sha256 "487c7398ea2e9ac17b4c38bc0747ebb584b204add8eef83538931d9be4716e8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.89.0/lightdash-cli-3.89.0-macos-x64.tar.gz"
      sha256 "fe42c9a2b1c57d9e9106c3fe5f36cad96332c693cceac264cc30319cda3bfa41"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.89.0/lightdash-cli-3.89.0-linux-x64.tar.gz"
    sha256 "c6a9c0e480ceac11ac135c9f9b52faf95341a8b6df246301923b1e1a31090fbe"

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
