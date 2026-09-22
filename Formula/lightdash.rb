class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.288.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.1/lightdash-cli-2.288.1-macos-arm64.tar.gz"
      sha256 "eb7ba00e9d07375eb7c7591f9f78ee685a8424ff21c82323d9c4e6c516dd04f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.1/lightdash-cli-2.288.1-macos-x64.tar.gz"
      sha256 "b715178821ac4cff27f1bf9476514fc2ff83aac7358877f14e21da561df59b48"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.288.1/lightdash-cli-2.288.1-linux-x64.tar.gz"
    sha256 "84b97dd33edb345dde7ecf33e16036ebb5ff47630a1b9ab8a914359fc87bcf6c"

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
