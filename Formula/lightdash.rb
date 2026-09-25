class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.341.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.341.0/lightdash-cli-2.341.0-macos-arm64.tar.gz"
      sha256 "eac8a4413c309d50312955aacc1c594ed410e83f3df0d1c12905318c07b25019"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.341.0/lightdash-cli-2.341.0-macos-x64.tar.gz"
      sha256 "b108ae4ebfcd51544b9d5925bd599450e740b1d35903f761a809e117170de96f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.341.0/lightdash-cli-2.341.0-linux-x64.tar.gz"
    sha256 "a1d7e6d6f7e1c0eb8c02c91adbcf666569fa3853ed806dbb6a060c38fafb5356"

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
