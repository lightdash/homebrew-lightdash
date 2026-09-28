class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.357.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.357.1/lightdash-cli-2.357.1-macos-arm64.tar.gz"
      sha256 "d3f8eabb79f73edd55d95326b4aa1e462d4fba25dbb4fdb13a689048e9d283bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.357.1/lightdash-cli-2.357.1-macos-x64.tar.gz"
      sha256 "247e45d58dc30858b0a7823f28e956b7fbdeecb6c4317767f4d727e940c58e67"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.357.1/lightdash-cli-2.357.1-linux-x64.tar.gz"
    sha256 "f7d90368146a33d29e4b1f4f38a905c83652ba2470dbce0bba92e790936c5ba3"

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
