class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.228.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.228.0/lightdash-cli-3.228.0-macos-arm64.tar.gz"
      sha256 "387df39a7a1b9464fb5e97f78f5ce40b1a357c3aabf61452040dd0c7336b18c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.228.0/lightdash-cli-3.228.0-macos-x64.tar.gz"
      sha256 "4632f301bdfa6cfaec4d1762ada55ccfc6a2c3687fd45d666711dbe4e149c21d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.228.0/lightdash-cli-3.228.0-linux-x64.tar.gz"
    sha256 "d9bedb4f9f26953766d5c7b6afdc0cbdf5210993d2443bec58cf5221a0471060"

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
