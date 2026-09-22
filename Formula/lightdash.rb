class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.8/lightdash-cli-2.286.8-macos-arm64.tar.gz"
      sha256 "ad873f97fbb0d9b24595fcba29e3ca6fdfad0aced397378a5caf00b1757b773a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.8/lightdash-cli-2.286.8-macos-x64.tar.gz"
      sha256 "93edfb7a14ce0ea1d29c0718209691177592fb8ff2aa38132dbfee12eeee325a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.286.8/lightdash-cli-2.286.8-linux-x64.tar.gz"
    sha256 "be3e4a01b042fe06ff322b635f9a4c8068be12334b5e4ef928d22da73da01991"

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
