class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.8/lightdash-cli-3.420.8-macos-arm64.tar.gz"
      sha256 "d170bc6b3d6ea589759de5448ef9c16f87ab22b0a6f847e31afe8c3a6f7c1bf2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.8/lightdash-cli-3.420.8-macos-x64.tar.gz"
      sha256 "0659e418a417d6d00ba9ceab7451d03c716e70579373ac14486fa73d9cc9f0d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.8/lightdash-cli-3.420.8-linux-x64.tar.gz"
    sha256 "daccccc07e4a21e8f6d7292c2b1a9d5890f787796a74904945024078ef13ed31"

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
