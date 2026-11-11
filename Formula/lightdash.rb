class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.0/lightdash-cli-3.210.0-macos-arm64.tar.gz"
      sha256 "9497b9e98e9cf1fbd757d46feee3ad3f38d9a394f5fee50bf5b24e7dd368962f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.0/lightdash-cli-3.210.0-macos-x64.tar.gz"
      sha256 "28af39f8a0e94e5d458ecb1251defd0e25bffda7e271ac387304c0c5a90dcab6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.210.0/lightdash-cli-3.210.0-linux-x64.tar.gz"
    sha256 "4d659c43f4d22076da7b87eaf7276f1c36f44fb5071b92c90f19e46b783bc7c2"

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
