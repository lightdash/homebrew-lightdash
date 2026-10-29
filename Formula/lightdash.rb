class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.1/lightdash-cli-3.93.1-macos-arm64.tar.gz"
      sha256 "c76e43b30ab67ea62ddb6dd0789bbca4ac41b23e6cc0a12d21b33cfb1407ac24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.1/lightdash-cli-3.93.1-macos-x64.tar.gz"
      sha256 "fec03c5a2a7baf6357326024d7be3a646ef3fd0c6f2e8b2a56fa28a0a96b19b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.1/lightdash-cli-3.93.1-linux-x64.tar.gz"
    sha256 "b190b7b5c16f26410447fb3180e3d798430c004359b0fafb4646dddaa7823b90"

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
