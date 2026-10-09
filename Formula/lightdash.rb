class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.508.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.508.0/lightdash-cli-2.508.0-macos-arm64.tar.gz"
      sha256 "31e9a0a244759b2bb11c3afbd6c81b04dbce7f6eb770e24b4face7b96530e7d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.508.0/lightdash-cli-2.508.0-macos-x64.tar.gz"
      sha256 "e6c416dd33ae5a70a96a2c041b879e94b95ec16c51df40e29c6e25832a1de374"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.508.0/lightdash-cli-2.508.0-linux-x64.tar.gz"
    sha256 "1d8246a2556d8e1964bb8c2fba9ff72903192a0521858870e460c6917ff2a645"

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
