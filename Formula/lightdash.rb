class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.398.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.398.0/lightdash-cli-2.398.0-macos-arm64.tar.gz"
      sha256 "8972d5f11db249830655942c1e593c27eec09fdeaa870e832b6e1211eef3ab07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.398.0/lightdash-cli-2.398.0-macos-x64.tar.gz"
      sha256 "3e8e347bd2c0ff1bff19e6132f1dd3fc7f1bc14578791dbd7da1716a2c01e4d8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.398.0/lightdash-cli-2.398.0-linux-x64.tar.gz"
    sha256 "089b8c65ee5a36ce8bc922432f061f7435f2fa09811cf093cafe2e410bc96ddc"

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
