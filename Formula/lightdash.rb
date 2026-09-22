class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.292.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.1/lightdash-cli-2.292.1-macos-arm64.tar.gz"
      sha256 "d188a22b77a174f98991daf97df3910ee4ce77b837364ab95c8203271f7ca142"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.1/lightdash-cli-2.292.1-macos-x64.tar.gz"
      sha256 "ea1efd2618f957b426c2011c3caba2a1ac8a303e7c95540e10a624806ffa9597"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.292.1/lightdash-cli-2.292.1-linux-x64.tar.gz"
    sha256 "4a91b152f8f8084b0124538223445a11f892ba168a1aafd502c596207941b0a4"

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
