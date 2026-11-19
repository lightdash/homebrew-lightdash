class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.328.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.2/lightdash-cli-3.328.2-macos-arm64.tar.gz"
      sha256 "138c8dca0cc09ab9a575709ccf37ec442cbaf9cec372cd292bec490a63776036"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.2/lightdash-cli-3.328.2-macos-x64.tar.gz"
      sha256 "2266eca627e605f72f0075663e67dc9ad73c862172e280be6c57da955fda91fa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.328.2/lightdash-cli-3.328.2-linux-x64.tar.gz"
    sha256 "8cb78b2364fb605c07401714f3af0a07a6454f693e9559955411960b842b3a91"

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
