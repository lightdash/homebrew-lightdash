class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.627.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.627.0/lightdash-cli-2.627.0-macos-arm64.tar.gz"
      sha256 "9c51422ad9b08ee805c7f8ba869b601dc68c6f63e35ea6c6cca022b43fe99b35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.627.0/lightdash-cli-2.627.0-macos-x64.tar.gz"
      sha256 "6997673d4d314a1358b330ccfb2b8186275415782f62b0cbe64684ae1cc75b49"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.627.0/lightdash-cli-2.627.0-linux-x64.tar.gz"
    sha256 "3261dfed1b7d555aa098933ee630e901ca85bc3d76d94fc165f98ee90284e5dd"

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
