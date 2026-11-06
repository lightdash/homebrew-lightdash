class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.170.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.170.1/lightdash-cli-3.170.1-macos-arm64.tar.gz"
      sha256 "37dd48936ffccacc2f83c4727370b914e9ce3d240c0e0fb247aed956817502d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.170.1/lightdash-cli-3.170.1-macos-x64.tar.gz"
      sha256 "5919eecad4cc700585217595785c3a3d16c30271a4751275b86a7a0b43644528"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.170.1/lightdash-cli-3.170.1-linux-x64.tar.gz"
    sha256 "9363fadb9991d290751f43c996231cf75bd28139671e7525e8282390b74e82c2"

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
