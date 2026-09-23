class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.314.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.0/lightdash-cli-2.314.0-macos-arm64.tar.gz"
      sha256 "f9ea43d0d17ce34526bda155c6859581b6741d52449cf5c183d21bdf5525a65c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.314.0/lightdash-cli-2.314.0-macos-x64.tar.gz"
      sha256 "9dea3c6ab30874a4d569def5b3d46ebdbc0fa4b78019214e48428b40ab930e04"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.314.0/lightdash-cli-2.314.0-linux-x64.tar.gz"
    sha256 "f5cec8dfe2e8ac1281dfc9d9874ef71638e41fd2a33ee2ea879823659949cfbc"

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
