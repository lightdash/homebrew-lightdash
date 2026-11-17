class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.300.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.300.1/lightdash-cli-3.300.1-macos-arm64.tar.gz"
      sha256 "38b4c061052f948f59a071530ea039953c0e14e0490164634b7e772f9bdf8329"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.300.1/lightdash-cli-3.300.1-macos-x64.tar.gz"
      sha256 "76d3a328ae934de280da6b6022dc4c1726bbe1ba7175bc6460fd7732507ebead"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.300.1/lightdash-cli-3.300.1-linux-x64.tar.gz"
    sha256 "f12d4d5dbbd55e7ccd31793605cb298c2f960c5d06c8593e99db517d8472286e"

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
