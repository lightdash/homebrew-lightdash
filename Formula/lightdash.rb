class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.585.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.585.0/lightdash-cli-2.585.0-macos-arm64.tar.gz"
      sha256 "df4d1539a6b2ea01e3cf3c287f584a6519c09dd10147d13cf6d8fa1c20ac9378"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.585.0/lightdash-cli-2.585.0-macos-x64.tar.gz"
      sha256 "08e20a276f610e0312fb864465ac6006e1b9544ddcafd4781f69c02d358b38be"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.585.0/lightdash-cli-2.585.0-linux-x64.tar.gz"
    sha256 "14a65a79ceedcc0d2cf3ec871fad896c254d0b0195f8ed43ac6be89b29f3110f"

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
