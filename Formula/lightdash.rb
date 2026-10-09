class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.500.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.500.0/lightdash-cli-2.500.0-macos-arm64.tar.gz"
      sha256 "85fc858620b4393b720b5ec62d5cc375738dbccceaf69bbaacc8b30d04c5028d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.500.0/lightdash-cli-2.500.0-macos-x64.tar.gz"
      sha256 "259da84b40da4919bbaec575177c16e3b1fba0d98282c0257cd42fbbf8a7f94f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.500.0/lightdash-cli-2.500.0-linux-x64.tar.gz"
    sha256 "fd6016df1c48644f6cbb12227bb4dc785a9e5b2181d0f4230d81bf192b45154b"

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
