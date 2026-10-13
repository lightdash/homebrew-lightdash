class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.577.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.0/lightdash-cli-2.577.0-macos-arm64.tar.gz"
      sha256 "256e615f4d03ce1432790b616f91f199bf0094b4b9749ce7365b539953afa1ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.0/lightdash-cli-2.577.0-macos-x64.tar.gz"
      sha256 "4355aa7aa4fe7a0e364c54ef44bb3da5aa883a59f46883d6f4030697c5be5546"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.577.0/lightdash-cli-2.577.0-linux-x64.tar.gz"
    sha256 "efd7f0ce152b3d798fec001efa9345c0d3eda61442e1226f8ec887f34d3c9b7e"

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
