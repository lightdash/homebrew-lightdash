class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.433.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.433.0/lightdash-cli-2.433.0-macos-arm64.tar.gz"
      sha256 "8c05c2c35dd85a0f73bd6f4ba317d1dbddd6e70cec92058aee4c4188762bff4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.433.0/lightdash-cli-2.433.0-macos-x64.tar.gz"
      sha256 "3c700ba37afa0ed1cb7218bff4db49218b8a76d77cd984d5d0e257b712702290"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.433.0/lightdash-cli-2.433.0-linux-x64.tar.gz"
    sha256 "b2026105d3210a13a6e6fd4038a5595d460eb24813d81b8a2b97d932ae857a92"

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
