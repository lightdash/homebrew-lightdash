class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.0/lightdash-cli-3.187.0-macos-arm64.tar.gz"
      sha256 "c25f74410daaa94e331f529724cd006f269f80cd5056ce53cbda0aca2613511f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.0/lightdash-cli-3.187.0-macos-x64.tar.gz"
      sha256 "5eeed69d3bd75957674ebab84366fb47f5558b009c9a29b8eb64872047423a07"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.187.0/lightdash-cli-3.187.0-linux-x64.tar.gz"
    sha256 "8406cf9e46cd2fb3ca9eca789d8096704b7fa7041d751c78f96b262f9ae8f8c8"

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
