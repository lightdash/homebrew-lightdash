class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.94.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.94.1/lightdash-cli-3.94.1-macos-arm64.tar.gz"
      sha256 "8836eae5e0662cbe921814ad1fce46019043ec130026a6fa0244d41a972c7a60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.94.1/lightdash-cli-3.94.1-macos-x64.tar.gz"
      sha256 "3043fc3c83a707ba1c639cbeeab240bf7d7a65ad8e0f60ff73fdba0e860fdeb6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.94.1/lightdash-cli-3.94.1-linux-x64.tar.gz"
    sha256 "414a449f58e82a66e0fb4d2238b68ad0b5623a9ab3b7bae4f1fbf9b6ba80191b"

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
