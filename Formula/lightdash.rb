class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.467.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.467.0/lightdash-cli-2.467.0-macos-arm64.tar.gz"
      sha256 "4c699d0658dcd65f84d6a05f31ad458705e55386db67ba4fc90a9c152e4f7998"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.467.0/lightdash-cli-2.467.0-macos-x64.tar.gz"
      sha256 "2bb442667a22d9ff7cf62b3dbf19a5ec9020644e85ea68d554beff967751e814"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.467.0/lightdash-cli-2.467.0-linux-x64.tar.gz"
    sha256 "a17b31cb688870189dd587d686eb089cb8461b85384506e5d9ee24f1eafdac37"

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
