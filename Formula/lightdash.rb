class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.0/lightdash-cli-3.48.0-macos-arm64.tar.gz"
      sha256 "4eea4d7d2a85fd8716ff44e923117f64961e53631c87b17476dfc84568d2d1a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.48.0/lightdash-cli-3.48.0-macos-x64.tar.gz"
      sha256 "189c0959ecd869ab2e5301df49d746197fdc200f0f7cbd324af74b3776caa440"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.48.0/lightdash-cli-3.48.0-linux-x64.tar.gz"
    sha256 "83b7795c71e29f789db8241243b897c7b1a265128b9b82c6c96ecb35ecfa1e02"

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
