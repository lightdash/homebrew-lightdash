class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.224.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.224.0/lightdash-cli-3.224.0-macos-arm64.tar.gz"
      sha256 "be4f96a1cc133be774cf7988de5be88b0213c6f2e5ea2c411c896552b3cf5b8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.224.0/lightdash-cli-3.224.0-macos-x64.tar.gz"
      sha256 "b5b9a12ac13ed16697f792fea54f935aef41201451154e984b0731dd600de6bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.224.0/lightdash-cli-3.224.0-linux-x64.tar.gz"
    sha256 "543ee9a3e5623763c37fcda5722386a0015e4f95050dae21f47542dde270b29e"

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
