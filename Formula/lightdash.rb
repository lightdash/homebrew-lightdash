class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.445.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.445.0/lightdash-cli-2.445.0-macos-arm64.tar.gz"
      sha256 "556847941cb792b10b2fbdcbbcb80f52e846b87812f4d8af1f6473ed865ba3ab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.445.0/lightdash-cli-2.445.0-macos-x64.tar.gz"
      sha256 "dfdce875cfeb7c9d662d247a6f1a3991cc1079fa593269debe05dfe89e425005"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.445.0/lightdash-cli-2.445.0-linux-x64.tar.gz"
    sha256 "5686312133984a63801e95421a3cc36068284b0542061c0e69362f2546d04f88"

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
