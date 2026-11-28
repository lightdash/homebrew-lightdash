class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.439.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.439.0/lightdash-cli-3.439.0-macos-arm64.tar.gz"
      sha256 "42b243396827d9346b646d45576c3513a632f31359af8b42ebee3c82f9dd7653"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.439.0/lightdash-cli-3.439.0-macos-x64.tar.gz"
      sha256 "b35b5d3391b801a06e02bf5d4fd60ad05f8e5da7bcf40f39386b9a123ac78b1e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.439.0/lightdash-cli-3.439.0-linux-x64.tar.gz"
    sha256 "16035b5022833d6a2e5e92bb10cf55ba645aad97d3f976772f8eb0662210e17f"

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
