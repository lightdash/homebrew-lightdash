class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.114.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.0/lightdash-cli-3.114.0-macos-arm64.tar.gz"
      sha256 "e81dba6f506037db4378e2342c346f9c8ae45de705715dc04a51f7fbd20fdad4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.0/lightdash-cli-3.114.0-macos-x64.tar.gz"
      sha256 "6de1c7b16d609b593d747919459c582d1f97f3f72b88387f8553720b91c9e266"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.114.0/lightdash-cli-3.114.0-linux-x64.tar.gz"
    sha256 "573349721a02c75f42e7664b433b278de3cb54477a11191dce255c5580669b39"

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
