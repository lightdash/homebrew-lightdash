class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.319.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.1/lightdash-cli-2.319.1-macos-arm64.tar.gz"
      sha256 "dbad27fbf90920a33ea0742a8695286d9e265b691fb8cc737d110e99d111058b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.319.1/lightdash-cli-2.319.1-macos-x64.tar.gz"
      sha256 "c57bdf3113e36e4868e144e15f42f26f3f96878159f4dfefcc57d48e06f73314"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.319.1/lightdash-cli-2.319.1-linux-x64.tar.gz"
    sha256 "c3b94cbed4c04705c2ccf95bbece6df2660c7ed223bb7fe397278c62b1e15470"

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
