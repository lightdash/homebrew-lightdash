class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.11.1/lightdash-cli-3.11.1-macos-arm64.tar.gz"
      sha256 "a57eb86008b2d49f199879b31c2981eb880214272e5fb04c442d72b73a1b3af5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.11.1/lightdash-cli-3.11.1-macos-x64.tar.gz"
      sha256 "edcde79110391aae77b1549892d9df7c5633eefcd1f5030d6ddf45b0e837893a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.11.1/lightdash-cli-3.11.1-linux-x64.tar.gz"
    sha256 "5330d251781dc78ae1c7bb81e51f38dcde81f28bcad04c6495512f4fac22068c"

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
