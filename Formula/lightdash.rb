class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.296.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.296.1/lightdash-cli-2.296.1-macos-arm64.tar.gz"
      sha256 "bbaf574a7b942f2b1769e3cd92e279ea796e8a29ee67167763b3b737922545cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.296.1/lightdash-cli-2.296.1-macos-x64.tar.gz"
      sha256 "31a2ac7b2942803eb1e05af1856e47d58a1707bde7a8a86a108319e060720a40"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.296.1/lightdash-cli-2.296.1-linux-x64.tar.gz"
    sha256 "d4906a2f38a84cbb54edd3b9f7a868202e161a58f8d720a5a57c5d20d17a86de"

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
