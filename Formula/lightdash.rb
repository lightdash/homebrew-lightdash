class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.353.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.353.0/lightdash-cli-3.353.0-macos-arm64.tar.gz"
      sha256 "75eeb6f911a5855ece21def58ad904503cfcec37a4b4e678b7f21402bca5ab24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.353.0/lightdash-cli-3.353.0-macos-x64.tar.gz"
      sha256 "78d23b654b0138e9a5e075ef4693dcea24cf956cf3d0087469c44fb2cd03f22c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.353.0/lightdash-cli-3.353.0-linux-x64.tar.gz"
    sha256 "a99396348358cd4610382dbc98dd86b24597437ed9ecb0ae61bc4821da0bda1d"

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
