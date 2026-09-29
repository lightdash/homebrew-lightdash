class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.377.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.377.0/lightdash-cli-2.377.0-macos-arm64.tar.gz"
      sha256 "d5bb968388e94a581fd836cadb47b444e4d417fc3a9726b0f42531e3f25cfd46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.377.0/lightdash-cli-2.377.0-macos-x64.tar.gz"
      sha256 "46c35e4eeed487e10176c1292c46bcdd14c18b5e743dab7b19150fe278ed08a9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.377.0/lightdash-cli-2.377.0-linux-x64.tar.gz"
    sha256 "80c8fea74d55763ee8a5667b40f16dc1a3d8c7d2fa63c6aa4770ac2f6d2d3100"

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
