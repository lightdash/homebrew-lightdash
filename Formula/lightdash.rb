class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.588.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.588.0/lightdash-cli-2.588.0-macos-arm64.tar.gz"
      sha256 "d4ccb0330b9c60eadaa67341bf074313cf34452200455a57d0d6ea078ad5f7b3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.588.0/lightdash-cli-2.588.0-macos-x64.tar.gz"
      sha256 "014a9e1a7d36cdf09ba48543721bd334e416c6517256a85be9d8bb405c05f2c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.588.0/lightdash-cli-2.588.0-linux-x64.tar.gz"
    sha256 "62aa595a7a3346af202148df00fb47f6981dfc772f5282616052f90084c38c48"

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
