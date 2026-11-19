class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.334.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.334.0/lightdash-cli-3.334.0-macos-arm64.tar.gz"
      sha256 "422d1a01b2273dce8d7022774f5b0a2a8c7c5530d4df47e05d74960e969e1d5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.334.0/lightdash-cli-3.334.0-macos-x64.tar.gz"
      sha256 "3389120c3be0c69788379189dec875e6c16db7b704f7717d78053bad9a244b75"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.334.0/lightdash-cli-3.334.0-linux-x64.tar.gz"
    sha256 "3ca1f1def833afa79b50dd78018c9961d830ace54199918d2f1493f8d93b6bac"

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
