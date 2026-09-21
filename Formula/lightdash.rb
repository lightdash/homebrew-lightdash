class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.3/lightdash-cli-2.274.3-macos-arm64.tar.gz"
      sha256 "c5aa1a4f4fc172fdd97e0f8d878b11631ccf6b046f8555aa1c5734f1d41c8e42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.3/lightdash-cli-2.274.3-macos-x64.tar.gz"
      sha256 "7138ce9aa7121c2e5cbbaabb73b00aa4263ea888671bc3e4186cec97f6e3509d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.3/lightdash-cli-2.274.3-linux-x64.tar.gz"
      sha256 "4759e5ca2f459d11cda4a57f77404bb093f95c962becf531fef55a6434a9c5bb"
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
