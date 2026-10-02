class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.420.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.420.0/lightdash-cli-2.420.0-macos-arm64.tar.gz"
      sha256 "48486fcb014e8a9dd4556055c6b40f1ab48d8e12430d87d471123da528cbb674"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.420.0/lightdash-cli-2.420.0-macos-x64.tar.gz"
      sha256 "fdfbe12b506087c8ee3160195a1b7565b599ec329cf78792a2a89c61ae8d78ba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.420.0/lightdash-cli-2.420.0-linux-x64.tar.gz"
    sha256 "a9fc17293640992950f2d8e1b42216fba9fd88bc9b18b1ab2b8e006559a8ab8f"

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
