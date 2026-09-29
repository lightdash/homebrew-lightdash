class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.376.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.376.0/lightdash-cli-2.376.0-macos-arm64.tar.gz"
      sha256 "2c951877b3be4a046998f6862df4be8b51b0ff1c26f67c3e32ef966845b8fd96"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.376.0/lightdash-cli-2.376.0-macos-x64.tar.gz"
      sha256 "00ea75585c3c8443eda7cf5bc0b62efae8e3499ad62559bc9d72c9ebec16da2d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.376.0/lightdash-cli-2.376.0-linux-x64.tar.gz"
    sha256 "742628f1987905c1b3226bcf2d1ef8e69857bd6f95d43be3f127b1e6a6ac99b7"

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
