class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.618.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.618.1/lightdash-cli-2.618.1-macos-arm64.tar.gz"
      sha256 "1fe5109f7b58406535cea94af40ed493f86bd35d71e2ba31c4cc22497463f2ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.618.1/lightdash-cli-2.618.1-macos-x64.tar.gz"
      sha256 "8ed279f7a24b9202a990ad1a656093073766cc8e12d693a18b810dff8df73ca2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.618.1/lightdash-cli-2.618.1-linux-x64.tar.gz"
    sha256 "3eabe9b592685867cb044267fe3ca26126a47e33b46382da5e7d4f6786074ea1"

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
