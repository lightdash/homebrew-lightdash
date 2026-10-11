class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.557.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.557.0/lightdash-cli-2.557.0-macos-arm64.tar.gz"
      sha256 "202d4297951e5086ada4adcdaa1da7c368f3c088fa726ad1902e9bd62e79a54f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.557.0/lightdash-cli-2.557.0-macos-x64.tar.gz"
      sha256 "84fec7cf9a94603c54b37803541ea302708c275a5ec364dea6b137325a8812c3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.557.0/lightdash-cli-2.557.0-linux-x64.tar.gz"
    sha256 "2d8002753432971c091b82779b3a00c2bcf89194b1e1d312d24b52b6f87c241b"

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
