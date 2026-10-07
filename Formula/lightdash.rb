class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.456.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.456.0/lightdash-cli-2.456.0-macos-arm64.tar.gz"
      sha256 "716994a3d297b70167dc9d5d3f62c987cf9f41943ab039838f63c3693be97f9d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.456.0/lightdash-cli-2.456.0-macos-x64.tar.gz"
      sha256 "dd1e38706f483459f3857edcf042ff0773aa7a634e3d5694552402a3b03db67c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.456.0/lightdash-cli-2.456.0-linux-x64.tar.gz"
    sha256 "7425e3cb8009f3c90d7b986e8a6829ce1b88fa148617bfc0eb2c4fe627078e91"

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
