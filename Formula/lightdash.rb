class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.592.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.0/lightdash-cli-2.592.0-macos-arm64.tar.gz"
      sha256 "6a337ea41eb00d91f96577b592297fbb2f0f80ab154bca7c348ed88b907411ab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.0/lightdash-cli-2.592.0-macos-x64.tar.gz"
      sha256 "68a2a9e5b4a8fb2931c7709ffbb99c38f1d316561651bab7aedd6cada8bbede1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.592.0/lightdash-cli-2.592.0-linux-x64.tar.gz"
    sha256 "c8422584a8f94c03d53922dad93e3b9d35159d75a4ee736bdec92559f089323b"

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
