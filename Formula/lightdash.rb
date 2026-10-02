class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.6/lightdash-cli-2.415.6-macos-arm64.tar.gz"
      sha256 "4c34a76a46a73a05b23a1bd58eb62cd2f70f9f78d359895ee7ce22984a07fabf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.6/lightdash-cli-2.415.6-macos-x64.tar.gz"
      sha256 "670d0dc511551cdf2136a0e83eae622d8fcc85bd1314600a81388a34c70854e0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.6/lightdash-cli-2.415.6-linux-x64.tar.gz"
    sha256 "761b49ba4cecaee440e318cefda087ca0715a95697bb1890abde1f05071687f7"

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
