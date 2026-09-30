class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.380.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.380.1/lightdash-cli-2.380.1-macos-arm64.tar.gz"
      sha256 "5606dfeb11687b415be87cb678f3b5656dbe21d537a78a0bb37a650fad91f181"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.380.1/lightdash-cli-2.380.1-macos-x64.tar.gz"
      sha256 "fe6f33113978833f3ea279eb25a6b396d6edf10b957de582467cedfb488569f7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.380.1/lightdash-cli-2.380.1-linux-x64.tar.gz"
    sha256 "703bcf79f2e1eaa627cf6d5589b823746e4968fd874abc6d0cb9587a6f0046b9"

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
