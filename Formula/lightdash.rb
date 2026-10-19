class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.7/lightdash-cli-2.606.7-macos-arm64.tar.gz"
      sha256 "58fccdbd3566b8ecbcc731350ee4aa52fa34e86f53fbfd638fd2a32c42f32e1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.7/lightdash-cli-2.606.7-macos-x64.tar.gz"
      sha256 "ca54ecd379843de7d877a8a91f371ac0d40ae7e60b751d6921c8e2a9a64e6912"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.7/lightdash-cli-2.606.7-linux-x64.tar.gz"
    sha256 "ae8ef040353333d50c49ef65a84cdc8e2b22f01fc21144843de27e8339f3a909"

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
