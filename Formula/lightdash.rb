class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.339.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.2/lightdash-cli-2.339.2-macos-arm64.tar.gz"
      sha256 "fa13c8fb279df78fe2f4430c9b6e0320e45995563778b1030d868c9aa69ced19"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.2/lightdash-cli-2.339.2-macos-x64.tar.gz"
      sha256 "26307bcd7d3907c86a05c8b60e6645a23051ff012625b5a3022d586c9511ca8b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.339.2/lightdash-cli-2.339.2-linux-x64.tar.gz"
    sha256 "b35779f359fb431d395a7196c539cd5d5c3533ee89e21d22f1a4b48cc69c6e2d"

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
