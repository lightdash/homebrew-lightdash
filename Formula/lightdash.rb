class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.354.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.354.1/lightdash-cli-3.354.1-macos-arm64.tar.gz"
      sha256 "f9c06d050f10e08a4942635e0020a7fb129d137b199468d1e7352c4c7b9affa9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.354.1/lightdash-cli-3.354.1-macos-x64.tar.gz"
      sha256 "7d80eafb4946255a9fe0e4373df8b2ada5f937f4698d51393a2a4aa1ff9dd124"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.354.1/lightdash-cli-3.354.1-linux-x64.tar.gz"
    sha256 "b0c003c418c64870eb003e73a4828e31ed4fdb8e2620732a5682140b78da8e01"

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
