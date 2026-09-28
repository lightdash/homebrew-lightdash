class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.3/lightdash-cli-2.352.3-macos-arm64.tar.gz"
      sha256 "046947bae9a7ca2a4e2642d7dd82ea5da98fbae85debf725e2c8e39811a3afcf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.3/lightdash-cli-2.352.3-macos-x64.tar.gz"
      sha256 "bdf16b0a6f9c06d1b19c3e6e8f97abc52347f24f1383dd1e08886dde99bead59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.3/lightdash-cli-2.352.3-linux-x64.tar.gz"
    sha256 "850911278f68665e277828ea0a926e58aedebee6fd14433366bd6fa8f4f86d11"

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
