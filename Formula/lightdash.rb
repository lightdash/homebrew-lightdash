class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.31.0/lightdash-cli-3.31.0-macos-arm64.tar.gz"
      sha256 "dca6cad2cfa4400e83fee4986bd3296731153355960de92aade8fa588b2c626b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.31.0/lightdash-cli-3.31.0-macos-x64.tar.gz"
      sha256 "bc8e862d7d4bfc97ce46fedaeb8ca0170be0b9a839c09ec36f5424114d64e13c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.31.0/lightdash-cli-3.31.0-linux-x64.tar.gz"
    sha256 "0624b980ac96a40df32491b1b570d3464a543e3f5634eecbdba151f429e0fc03"

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
