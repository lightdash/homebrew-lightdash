class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.201.0/lightdash-cli-3.201.0-macos-arm64.tar.gz"
      sha256 "5366e37f231935229711b15621a49e93ce835707efc1c31c254b5d576591573c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.201.0/lightdash-cli-3.201.0-macos-x64.tar.gz"
      sha256 "c24b1bfb4e5de409ae9e533ac877b46e7a70108ec772802715ec406a56be7465"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.201.0/lightdash-cli-3.201.0-linux-x64.tar.gz"
    sha256 "1e531ee98a08c891f77209522ad88ec203b0844de1f73272dfc2e0d8dbb1b6b7"

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
