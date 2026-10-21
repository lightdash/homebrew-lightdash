class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.13.1/lightdash-cli-3.13.1-macos-arm64.tar.gz"
      sha256 "c5ad2d6dbcea49cd6c3cbb484df477ab891312c4eddc9df0af19b6e1a3aede87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.13.1/lightdash-cli-3.13.1-macos-x64.tar.gz"
      sha256 "1145ed23732428345f55bc843f7186fe05a6b4951324872ae42450159586667c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.13.1/lightdash-cli-3.13.1-linux-x64.tar.gz"
    sha256 "922d68424672c8ca6e2446cf1daf8d8e7de0b5136fed13460c81dc25ed95d0ca"

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
