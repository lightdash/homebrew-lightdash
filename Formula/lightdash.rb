class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.563.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.563.0/lightdash-cli-2.563.0-macos-arm64.tar.gz"
      sha256 "a137ddc282645274333905bc6ce66b65981a9f21c54681e17c567c57fe5fd1f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.563.0/lightdash-cli-2.563.0-macos-x64.tar.gz"
      sha256 "7742b352d553a6881dbe4237993291a01478d38b046ff2842e48832ca582e551"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.563.0/lightdash-cli-2.563.0-linux-x64.tar.gz"
    sha256 "5f18279375286669c5afe5203582e343fa860a41793527386c04414ed5049c11"

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
