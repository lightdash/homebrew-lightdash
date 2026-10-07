class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.468.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.468.0/lightdash-cli-2.468.0-macos-arm64.tar.gz"
      sha256 "d8d595b79af4e933c242ba594d7e3a08de56e1f4f3a1575109ffeec3ab66861d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.468.0/lightdash-cli-2.468.0-macos-x64.tar.gz"
      sha256 "db39a83e53fcfb208d9610a162dd223727873b6a38293e3bd0f6bc3d6f8642c7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.468.0/lightdash-cli-2.468.0-linux-x64.tar.gz"
    sha256 "8167ce55b26028d1595ffd69269c85d97a3fda46b65ff4d95cf3baef05b4b73e"

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
