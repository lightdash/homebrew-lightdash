class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.5/lightdash-cli-3.211.5-macos-arm64.tar.gz"
      sha256 "17645a976bb57bcfacbd5bb080f724605898008c63594ccddecaef9404432db2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.5/lightdash-cli-3.211.5-macos-x64.tar.gz"
      sha256 "93ab0f6389e4cc4224cce8e839683ed624702b4dacbcc1b69ee3e44619c93cdd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.5/lightdash-cli-3.211.5-linux-x64.tar.gz"
    sha256 "37449c20d156ab6b452b4bc71de12d530af2a4530ebf6a48026c43f6c5c21c4a"

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
