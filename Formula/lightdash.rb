class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.2/lightdash-cli-2.428.2-macos-arm64.tar.gz"
      sha256 "dba7ff2245c0735ca2d6c3a46e3c794bec9b5762997d290de3266d8ab1e44815"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.2/lightdash-cli-2.428.2-macos-x64.tar.gz"
      sha256 "678256a6262fcd0788a55c504dac375cedf9b8f04c07648e902d65e5aa59cf44"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.2/lightdash-cli-2.428.2-linux-x64.tar.gz"
    sha256 "4dd4f0a01390aed71a795a30272a608d9b7237c74410e393a33c71aff90e8b8e"

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
