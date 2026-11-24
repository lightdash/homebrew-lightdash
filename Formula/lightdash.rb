class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.389.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.389.0/lightdash-cli-3.389.0-macos-arm64.tar.gz"
      sha256 "652aa3e00adc34e7e38433c217b0a2398ffe4fab84f78a3c79e6e27d5b797104"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.389.0/lightdash-cli-3.389.0-macos-x64.tar.gz"
      sha256 "b644c2cedc4f16d63cd5b3ef685d275efc15f7f62ddf41ac532effbe8ed9e663"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.389.0/lightdash-cli-3.389.0-linux-x64.tar.gz"
    sha256 "fdb6b9f5d0897539e6ff20a4e110317ab258a705c59a25d63ff1f0fc107417c5"

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
