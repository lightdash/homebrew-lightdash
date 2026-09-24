class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.329.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.1/lightdash-cli-2.329.1-macos-arm64.tar.gz"
      sha256 "deee30139c5d5fe564e9db234eb6c98f9f448e2bd23a9eed427cbba0a2a67820"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.1/lightdash-cli-2.329.1-macos-x64.tar.gz"
      sha256 "e70c634c12a47613025cf0dba2038a99c3b754e30ba0cd2c13aadab8813a4032"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.329.1/lightdash-cli-2.329.1-linux-x64.tar.gz"
    sha256 "b764b8abf76875c1dbf6c229f8b515794f77e885640811a367719642711ad6b4"

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
