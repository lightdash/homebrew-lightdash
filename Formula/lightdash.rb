class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.95.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.2/lightdash-cli-3.95.2-macos-arm64.tar.gz"
      sha256 "1d8deb8f692fb87223fbc37529b47e430ae34604abae08b6af1a0b27cbfad37e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.2/lightdash-cli-3.95.2-macos-x64.tar.gz"
      sha256 "9256e28831c6982136e212e68d1920f2b1ed8c5ec27b9bd01dce344808aeafba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.95.2/lightdash-cli-3.95.2-linux-x64.tar.gz"
    sha256 "af62db4f1e888f736c7bc861a11937c595218211e87d12c67ab09ec371ea918c"

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
