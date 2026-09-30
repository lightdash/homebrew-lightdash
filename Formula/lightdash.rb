class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.396.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.396.0/lightdash-cli-2.396.0-macos-arm64.tar.gz"
      sha256 "589ba2e510718163ee3ede4d221fd185a3b0973728df23626c09cc3a9f7fde51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.396.0/lightdash-cli-2.396.0-macos-x64.tar.gz"
      sha256 "49dfc76bdf2555a8a0100f9adf6e6f7942a8dd02d00215f12115f8a4d1484d92"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.396.0/lightdash-cli-2.396.0-linux-x64.tar.gz"
    sha256 "ac2bc14abd0f9e2ef83ae82e474a6e4878b9a01eeae3952d8270839eb2e3c11f"

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
