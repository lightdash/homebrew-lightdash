class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.342.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.4/lightdash-cli-2.342.4-macos-arm64.tar.gz"
      sha256 "93c6e8530d334649e91afeb9d02f44dffb8e848c51edad1226e89fef29b8b460"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.4/lightdash-cli-2.342.4-macos-x64.tar.gz"
      sha256 "b2bd259068ab4a37107340d5b739dede8e1b60b8587870807a53074adfbc7fcd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.342.4/lightdash-cli-2.342.4-linux-x64.tar.gz"
    sha256 "3a8d7be02f988a21187159d95d1742cf45a7220ba420a6c302e27324d27a2a87"

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
