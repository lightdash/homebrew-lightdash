class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.207.0/lightdash-cli-3.207.0-macos-arm64.tar.gz"
      sha256 "5b3ba82a634c92acae54c96ebbd3b0adf83fb89d38cb52290365708833182adf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.207.0/lightdash-cli-3.207.0-macos-x64.tar.gz"
      sha256 "bf3c71964c6280d8d17e717e44bcbf4f08fb9bb588e9a1243da457a7ee8802db"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.207.0/lightdash-cli-3.207.0-linux-x64.tar.gz"
    sha256 "387bbe6e4c38f61198436bd4b369316a146e5e2e15864752e33e5541c4519789"

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
