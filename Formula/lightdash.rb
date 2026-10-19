class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.615.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.615.0/lightdash-cli-2.615.0-macos-arm64.tar.gz"
      sha256 "aaacd30d3d9d268c19185db8500233f80f33cf156a56b3949cb065ff24de1994"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.615.0/lightdash-cli-2.615.0-macos-x64.tar.gz"
      sha256 "029ad38f13211b3f93a47a5c23dd33d6513b12d8062ca9c7b3969c390d399079"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.615.0/lightdash-cli-2.615.0-linux-x64.tar.gz"
    sha256 "4e2c5cad8ce6ac4f872722c9f4574d08cfabc9a3f9742a64dafc33a57841573e"

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
