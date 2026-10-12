class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.568.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.3/lightdash-cli-2.568.3-macos-arm64.tar.gz"
      sha256 "b33d3cd04d0e16703b98a4d1190b47ac544a7c6b72852b5c7de2f14ee321ee13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.3/lightdash-cli-2.568.3-macos-x64.tar.gz"
      sha256 "e429d0dc7f5351882df05dd0d56061e5a62ba7592785f41ef3506af904c53b78"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.568.3/lightdash-cli-2.568.3-linux-x64.tar.gz"
    sha256 "be648713469f5f9faff5850765bb076a0ff860e0686f8f08f497326b5add16e1"

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
