class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.4/lightdash-cli-2.352.4-macos-arm64.tar.gz"
      sha256 "ad0316bad59ad331d17f76c83d657d00556066f4f812a3b13e31c13d1c5760f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.4/lightdash-cli-2.352.4-macos-x64.tar.gz"
      sha256 "b22dc1dae0d3ffd142d9f44eb88e9c6fe4470fb6e99fe5cd67a72bc41bd4889d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.4/lightdash-cli-2.352.4-linux-x64.tar.gz"
    sha256 "493b703dec489f784049761ad9381b8b8fa15d9072e8b292cd2a0a3bb8ee0f7c"

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
