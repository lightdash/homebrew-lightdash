class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.323.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.323.0/lightdash-cli-2.323.0-macos-arm64.tar.gz"
      sha256 "6041f78073aca99087579928d7110ffa33d2893a8bed0517d4237ed2cec5293a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.323.0/lightdash-cli-2.323.0-macos-x64.tar.gz"
      sha256 "aa5a93cac1cb689fab4f6688ca85d3549d7d3d3838e9b72c6337ff2163af1c0f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.323.0/lightdash-cli-2.323.0-linux-x64.tar.gz"
    sha256 "03a385cc42efe8c38b3dd20450e7a3e9b5e4b1e946b154d1a7ee5f3825a14dc4"

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
