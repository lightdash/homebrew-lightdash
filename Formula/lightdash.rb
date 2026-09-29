class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.372.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.372.1/lightdash-cli-2.372.1-macos-arm64.tar.gz"
      sha256 "cd6ba930a501ca1a0b5433252b59604b3885d52332b4b8aa69626bd6560ded80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.372.1/lightdash-cli-2.372.1-macos-x64.tar.gz"
      sha256 "1ee39c06734c2d41f59f85bcfb66d24fcf710a057a23889ff104339f83cd22fd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.372.1/lightdash-cli-2.372.1-linux-x64.tar.gz"
    sha256 "1ba5f4d2531f1e51f65e5387d5c09a9b964aa531ac3a19cbba200719b466197e"

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
