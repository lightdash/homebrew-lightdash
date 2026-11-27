class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.9/lightdash-cli-3.420.9-macos-arm64.tar.gz"
      sha256 "db773d788b9630b35be6b55993c9161b9184e52412720d36ff73ac67a5e2786e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.9/lightdash-cli-3.420.9-macos-x64.tar.gz"
      sha256 "a3ad78f0cba3dce5a698501f06087660a5bcdda42492ff7931692f07959c6b73"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.9/lightdash-cli-3.420.9-linux-x64.tar.gz"
    sha256 "3306651f6a9b1c8496763d1a1da36ddc12ff8a01d7654a35eb779fdf6028e23a"

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
