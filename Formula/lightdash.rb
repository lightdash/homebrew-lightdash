class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.343.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.343.0/lightdash-cli-3.343.0-macos-arm64.tar.gz"
      sha256 "0097c845db61631ece5471145cab4f71cced62f326af5c3b23efab91dc59ce04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.343.0/lightdash-cli-3.343.0-macos-x64.tar.gz"
      sha256 "e30643cc99ae89deabba2da7c7eca64b80674fefce025120ff82400bfca66a6f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.343.0/lightdash-cli-3.343.0-linux-x64.tar.gz"
    sha256 "427ea851047011f9714e29f2fe5eeab6b620c61038cd332414c79ff1e46ab6cf"

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
