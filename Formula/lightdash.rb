class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.498.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.498.0/lightdash-cli-2.498.0-macos-arm64.tar.gz"
      sha256 "3a069965ace2ee6e4c3ac0a9b05e9feb68c5c26f87eefe60ac9f152a28af9231"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.498.0/lightdash-cli-2.498.0-macos-x64.tar.gz"
      sha256 "97b3c27796cb7abd94398aaed4906ec511f0960675122ca269c87a6d3041529b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.498.0/lightdash-cli-2.498.0-linux-x64.tar.gz"
    sha256 "5f5ead19496de94ee2de98cbc11073696787ad0df30ead685885a7094feb70de"

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
