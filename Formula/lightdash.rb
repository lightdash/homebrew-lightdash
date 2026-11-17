class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.294.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.2/lightdash-cli-3.294.2-macos-arm64.tar.gz"
      sha256 "8d2a43b14f71690eae2f0db9a8a721f7c384d8fedafd4714a0f6c3b42685f4f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.2/lightdash-cli-3.294.2-macos-x64.tar.gz"
      sha256 "635c771567d40c7ddd85416d44eb32df7f0f4ac74411a491e67ef28153eebf01"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.294.2/lightdash-cli-3.294.2-linux-x64.tar.gz"
    sha256 "4307647d9be3b3730ebab15827dfaf5193495b18b9d32d56b023d5b0220728d4"

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
