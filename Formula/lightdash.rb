class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.455.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.0/lightdash-cli-2.455.0-macos-arm64.tar.gz"
      sha256 "df85429b1cae34e2bd7444fc53c5731be06f049e9a5fa1a73d5d234f0d924201"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.0/lightdash-cli-2.455.0-macos-x64.tar.gz"
      sha256 "3069471cfdc7208b8efc4457e80285e73bd5f6fd090c8983896d992c2e189af8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.455.0/lightdash-cli-2.455.0-linux-x64.tar.gz"
    sha256 "8519aabca5e9d9fdcfb9f486fa2917d12c29b0802d5188ec0ef80a55bb65fdea"

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
