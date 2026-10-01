class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.412.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.3/lightdash-cli-2.412.3-macos-arm64.tar.gz"
      sha256 "fa24eff32c186e96906c53c79055978d8b7ef66be45093d5c182a6771db02616"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.3/lightdash-cli-2.412.3-macos-x64.tar.gz"
      sha256 "fcdcb188bdf88168966da3cd8bf7d1058c08c66e62676f8b49b3ff35f4fbc6ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.412.3/lightdash-cli-2.412.3-linux-x64.tar.gz"
    sha256 "a20cb17acdfcceb324340ca1c490c7547e4763a32d8d32099e0139f4a782207c"

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
