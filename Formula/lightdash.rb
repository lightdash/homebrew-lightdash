class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.1/lightdash-cli-2.344.1-macos-arm64.tar.gz"
      sha256 "cde19dbfb9ebe6f11c1e976d0ccd9b87fc3d8675ecede32ea0d8568e17f38cd2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.1/lightdash-cli-2.344.1-macos-x64.tar.gz"
      sha256 "309e0ec0ce4a05b2472602ebbda3f8f95b7eda664a5a79e8f6b36a14b6b08733"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.1/lightdash-cli-2.344.1-linux-x64.tar.gz"
    sha256 "8bff1406e82b6954f0f5543e325066efab43ec4aa4775e9d0543bf7b73d3fc1c"

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
