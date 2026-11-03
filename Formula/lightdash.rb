class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.134.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.134.1/lightdash-cli-3.134.1-macos-arm64.tar.gz"
      sha256 "fd5493afde36d700f3e1bf3d7707d9dc7237f8ebd6bd008a2c27050c5e1ddb99"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.134.1/lightdash-cli-3.134.1-macos-x64.tar.gz"
      sha256 "4f615329ae29c725dff1e5dd5c50fba9ed5e142735c6dd089d125f8fbdfc581b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.134.1/lightdash-cli-3.134.1-linux-x64.tar.gz"
    sha256 "9d440815f76d9831f7ddb356329942428726103397365d78e5121a4765173747"

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
