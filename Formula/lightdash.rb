class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.204.0/lightdash-cli-3.204.0-macos-arm64.tar.gz"
      sha256 "10cae1607c8c1abbc4723062b83f3d82dcba12544da09e6850249ee2a0bfa5a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.204.0/lightdash-cli-3.204.0-macos-x64.tar.gz"
      sha256 "c1ec188a2b6f85f26360240685745c8c349232e3bed3297bb779fb8de2f31bf5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.204.0/lightdash-cli-3.204.0-linux-x64.tar.gz"
    sha256 "a8118e9a1fc545cdd8cdc9e20d9a98097bafa48a0bfa4c52b399d8ab0e37d364"

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
