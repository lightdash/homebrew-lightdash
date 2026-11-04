class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.149.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.149.1/lightdash-cli-3.149.1-macos-arm64.tar.gz"
      sha256 "04baf02b7f51e8d1f9a5acc308b18f97df5522f6a7b5126d4ce0d46601b12410"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.149.1/lightdash-cli-3.149.1-macos-x64.tar.gz"
      sha256 "c467d559ac5c7666bcdc24581d3633a5d083ed7e463e6bea7db3fbe9c990ed9f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.149.1/lightdash-cli-3.149.1-linux-x64.tar.gz"
    sha256 "688103d9e10a416c205eed1974b364e5be138803f0ebebfab355063ec2abd852"

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
