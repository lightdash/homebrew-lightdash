class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.263.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.1/lightdash-cli-2.263.1-macos-arm64.tar.gz"
      sha256 "a5aa1cbf9ce181bd75443db6c67d8d786fb091eddb0bc77a3850d4120a4c84be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.1/lightdash-cli-2.263.1-macos-x64.tar.gz"
      sha256 "46bb07375a170c94e161c05f6b5e0a0f96ebe5f7027044051fcd146267a076a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.1/lightdash-cli-2.263.1-linux-x64.tar.gz"
      sha256 "9013408b908d2942184a1f910fa303ed3624b61882a39dade6f379f82a53d5b4"
    end
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
