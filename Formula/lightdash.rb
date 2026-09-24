class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.332.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.332.0/lightdash-cli-2.332.0-macos-arm64.tar.gz"
      sha256 "198004eb50a01a6c8d850ffa8703e1bda1f375c93694326f1732bebc73d510e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.332.0/lightdash-cli-2.332.0-macos-x64.tar.gz"
      sha256 "b820031a2bf1a856ac0eda6439eef1003593da8db1cb54e6d436f590e2a64ca8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.332.0/lightdash-cli-2.332.0-linux-x64.tar.gz"
    sha256 "134fa77b10a62e5344a1d1f4ebeeccb1404ca1451ceab77dd9b9fc9a55c2863d"

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
