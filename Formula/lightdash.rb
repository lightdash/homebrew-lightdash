class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.588.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.588.1/lightdash-cli-2.588.1-macos-arm64.tar.gz"
      sha256 "07d1c96c378a6c64e20d532dffb5d5bd1d8f755ea6223ce0d3be4994a88b740a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.588.1/lightdash-cli-2.588.1-macos-x64.tar.gz"
      sha256 "39114ca7e9e6129f428cdaa84c942e761e6700b2579d749bc213693d711ad40f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.588.1/lightdash-cli-2.588.1-linux-x64.tar.gz"
    sha256 "ccc77ac6a034bf090fac02a9fbc9198dd6851cb8e3d4e08fa20d2d034dcd3feb"

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
