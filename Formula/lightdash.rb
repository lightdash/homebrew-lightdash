class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.368.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.368.0/lightdash-cli-3.368.0-macos-arm64.tar.gz"
      sha256 "89bc8f0cf476ca1428fcea9d2a44939bf94181b438d39c97b3c8438a4b2a7205"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.368.0/lightdash-cli-3.368.0-macos-x64.tar.gz"
      sha256 "5119f66bd6fd277b9483232ad5cc7acd1c831bb112acdc021e047b1a16fd5562"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.368.0/lightdash-cli-3.368.0-linux-x64.tar.gz"
    sha256 "bd95fa93a7935a1173e9066c0a9618d3d334705ef7f68146f9d1eef864ace44c"

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
