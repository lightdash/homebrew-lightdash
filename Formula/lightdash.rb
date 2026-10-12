class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.565.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.1/lightdash-cli-2.565.1-macos-arm64.tar.gz"
      sha256 "61109bd836aaf88b091f07367da69ed4eace05f10133f401af793ef8af68dc78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.565.1/lightdash-cli-2.565.1-macos-x64.tar.gz"
      sha256 "deb7a3a989d1ca2a076e07bb6648ad4d71be8ef37b7f86d1695bcb2abe49be00"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.565.1/lightdash-cli-2.565.1-linux-x64.tar.gz"
    sha256 "f26ea345f017921b277804ee4c8a3376f574de8ef1b107cbd8fc6009b2590886"

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
