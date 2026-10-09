class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.504.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.2/lightdash-cli-2.504.2-macos-arm64.tar.gz"
      sha256 "f970dbaa71a2885e206414b67f4fe21139f4533d79f75e8fdf4e6ad272c8b438"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.2/lightdash-cli-2.504.2-macos-x64.tar.gz"
      sha256 "6d9c939aacb063d4ed188a8ec8aa603095d6200f0d08f7fcd9954e121ca7d925"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.504.2/lightdash-cli-2.504.2-linux-x64.tar.gz"
    sha256 "e93f623ea36f196b27b2a2cd95e21210dc636a95961e25dc05c6a62964c0f742"

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
