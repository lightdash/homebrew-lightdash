class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.83.0/lightdash-cli-3.83.0-macos-arm64.tar.gz"
      sha256 "2dfe2a4b090eb0455b69d4e4048737d4d9fa36086556df89ae68c6f0fcf3f6e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.83.0/lightdash-cli-3.83.0-macos-x64.tar.gz"
      sha256 "ddbcc6dcb2b2f331f65dad5682b32b4cc756efebc7a7eebab42622a4a68e4916"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.83.0/lightdash-cli-3.83.0-linux-x64.tar.gz"
    sha256 "4c72c0ee9a5fbbe1816e925ae64ebf2c5e62e57df8f2f5c05a00cd1de48e3b96"

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
