class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.309.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.309.1/lightdash-cli-2.309.1-macos-arm64.tar.gz"
      sha256 "6f1d1909a630ada40a6d0cc40077fadf6db435b847ef65c1b1947d972e3e778b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.309.1/lightdash-cli-2.309.1-macos-x64.tar.gz"
      sha256 "02749003e52dd5958a66cb98fd088c9708388f0e15084ef60cf7ad394c6c416c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.309.1/lightdash-cli-2.309.1-linux-x64.tar.gz"
    sha256 "bbf4440a87b31dcf47500ffda694f45cef0a9396dce44661c350d077c5afe974"

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
