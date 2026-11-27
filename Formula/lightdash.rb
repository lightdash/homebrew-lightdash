class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.431.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.431.0/lightdash-cli-3.431.0-macos-arm64.tar.gz"
      sha256 "b627bf67792e753f33e00fbad707302cde85aebadc6e77e9ef8850a0807387b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.431.0/lightdash-cli-3.431.0-macos-x64.tar.gz"
      sha256 "8dc561e28416f7d70a235a379da965c7c79b40ef419dab87b76233af6feffa12"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.431.0/lightdash-cli-3.431.0-linux-x64.tar.gz"
    sha256 "d21c2c25ed3acbc7381c42e0bef88b54ecc4bb1c9070241ae06e09e202ce4347"

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
