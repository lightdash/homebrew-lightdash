class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.423.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.1/lightdash-cli-2.423.1-macos-arm64.tar.gz"
      sha256 "85a37b4b4e523770667c55b9450b9515301187664dc9924a4d7ff549903097f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.423.1/lightdash-cli-2.423.1-macos-x64.tar.gz"
      sha256 "d8dc3a6731bce43ec72b9fb0f2c76c3152f2d5b31c5bd2b8bd4fb2656645c113"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.423.1/lightdash-cli-2.423.1-linux-x64.tar.gz"
    sha256 "2d61ae1de1394c8c2dbc7658edc6c87344b61bdcfefb917e3785871f33c33f14"

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
