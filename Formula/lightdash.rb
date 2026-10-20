class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.629.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.4/lightdash-cli-2.629.4-macos-arm64.tar.gz"
      sha256 "b082b46bb98d336a124f34113c88c5bf553bbbe3311ac24c9e6924ea026cb7b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.4/lightdash-cli-2.629.4-macos-x64.tar.gz"
      sha256 "f3dc976529a9c97ec2c87019308beaef33332619046711da949ca75735bb3f81"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.629.4/lightdash-cli-2.629.4-linux-x64.tar.gz"
    sha256 "9dcc22dc7e36467d311fccff5ac8a7f5f2095040ba6cd403d20b30f257408b5f"

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
