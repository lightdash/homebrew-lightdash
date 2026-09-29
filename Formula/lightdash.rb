class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.368.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.368.1/lightdash-cli-2.368.1-macos-arm64.tar.gz"
      sha256 "35e88c79f20465f213747b50fd35e2d448c118d2c6585756ce38f91e36b974d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.368.1/lightdash-cli-2.368.1-macos-x64.tar.gz"
      sha256 "74b5cd65f3d066870d33e5c29316a047086ce6dcd98b9fd3d490b3aa69771cf3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.368.1/lightdash-cli-2.368.1-linux-x64.tar.gz"
    sha256 "18e3122090374d180f34cc57010c60e6e3747ad2e676a7f81a3c88161ba01581"

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
