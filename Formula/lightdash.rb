class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.522.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.522.0/lightdash-cli-2.522.0-macos-arm64.tar.gz"
      sha256 "3dfd89ea3683129c1434869f5d60f4ff40a17b7ff848e66e17f46d8c7e71608a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.522.0/lightdash-cli-2.522.0-macos-x64.tar.gz"
      sha256 "11396dc6ec8f99a19ac445a7e537de8a086aecc17836a6f500dc0e9ad8a95978"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.522.0/lightdash-cli-2.522.0-linux-x64.tar.gz"
    sha256 "6d8be185eec79a95d031c1eceb99810c98556ff6d581a6e57aa089bf9e1261cf"

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
