class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.126.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.126.1/lightdash-cli-3.126.1-macos-arm64.tar.gz"
      sha256 "808329619e364a1f9909d64e02e761e533b1f3ef3413f7334a81bb69672b0578"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.126.1/lightdash-cli-3.126.1-macos-x64.tar.gz"
      sha256 "6518272d0a12d87129b6198f57e9fd4ecabde51726617ef37d9e52a411f1218e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.126.1/lightdash-cli-3.126.1-linux-x64.tar.gz"
    sha256 "f95e2aeb578158f558a9a857618b659da2e4bddb7b211121619abcbd0a891d22"

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
