class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.347.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.347.0/lightdash-cli-2.347.0-macos-arm64.tar.gz"
      sha256 "670fb98fcb888c903011e7225e2de02651b9e4e63a066c3a53fd27df42925da1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.347.0/lightdash-cli-2.347.0-macos-x64.tar.gz"
      sha256 "0bb3b9eeae0d4bad1f0b5e7d75aa3f9887634e4861a136a276e10dff7b5de3cc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.347.0/lightdash-cli-2.347.0-linux-x64.tar.gz"
    sha256 "cbc462f1c1e970f35932e703ecad5a9d7f72b59721bf65453f4f2abf6bce6121"

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
