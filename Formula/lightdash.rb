class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.505.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.505.0/lightdash-cli-2.505.0-macos-arm64.tar.gz"
      sha256 "574b92ca36afae2110c3be1a700450601637cb8278dec1b66b5e5e2f8bc8f08e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.505.0/lightdash-cli-2.505.0-macos-x64.tar.gz"
      sha256 "7a2bbf8921f2dbaf95379646e9355f0ac798e3357281952cbb0f6033b61365ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.505.0/lightdash-cli-2.505.0-linux-x64.tar.gz"
    sha256 "610ffa32df8a0a3e128069f798e0f568768c3ceb9edf9e162b54df3e4485a4d7"

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
