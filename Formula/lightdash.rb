class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.181.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.1/lightdash-cli-3.181.1-macos-arm64.tar.gz"
      sha256 "85e5357b0fe0cf6153eb6992a4191795127f431587975c8a20b463584e4c75e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.1/lightdash-cli-3.181.1-macos-x64.tar.gz"
      sha256 "483a05cbda5fa8829b102f7962c573ce6ed53f62f75dbfbd26d17abc4b236a49"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.181.1/lightdash-cli-3.181.1-linux-x64.tar.gz"
    sha256 "b361b62419a3f62a988b838108569c93fa775dde7a56e6b79bfb0970a4a66d2f"

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
