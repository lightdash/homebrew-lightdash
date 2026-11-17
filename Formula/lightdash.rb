class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.287.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.287.0/lightdash-cli-3.287.0-macos-arm64.tar.gz"
      sha256 "2f6dd127b6b7a4e65d6daf7ca75355292d3b2ca864093745fbe05417d8854259"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.287.0/lightdash-cli-3.287.0-macos-x64.tar.gz"
      sha256 "8b01f3d9acdfece46a05f66d0c303d109473c636df1e5002a829a853a93d9348"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.287.0/lightdash-cli-3.287.0-linux-x64.tar.gz"
    sha256 "9aa45b58350351a1340b0a0a630fd5cda95732919cff91a0ce4f34d2f1989490"

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
