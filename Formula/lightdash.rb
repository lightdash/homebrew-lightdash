class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.581.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.581.0/lightdash-cli-2.581.0-macos-arm64.tar.gz"
      sha256 "fa1858be964a60b1a0e9c61ac63486872c10f40c333d0d4e38e99c7316127948"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.581.0/lightdash-cli-2.581.0-macos-x64.tar.gz"
      sha256 "85a58abd3466aabb07a01d83dee45c9d12b4767d5c676d85d206c1ccfeb63720"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.581.0/lightdash-cli-2.581.0-linux-x64.tar.gz"
    sha256 "53cc4c79a3017b95a50bd88bb302f9ab4fd006cc795310da3e1cbe95de432ca5"

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
