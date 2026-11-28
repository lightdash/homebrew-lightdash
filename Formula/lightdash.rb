class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.437.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.437.0/lightdash-cli-3.437.0-macos-arm64.tar.gz"
      sha256 "88a6226c202c361e9b216a97a30511bcb8899091ca9db32c484d0393ba1fa59d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.437.0/lightdash-cli-3.437.0-macos-x64.tar.gz"
      sha256 "16e6dd66424a0dff86f0ca931bca1ae756bc5c7df631a2d5a153d1bf91468801"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.437.0/lightdash-cli-3.437.0-linux-x64.tar.gz"
    sha256 "d8d6f1682ee21440e62ca63f2aa20810fbad7a1f3efa0ac3997e135c0b79d5ea"

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
