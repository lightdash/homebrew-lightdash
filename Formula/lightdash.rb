class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.495.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.0/lightdash-cli-2.495.0-macos-arm64.tar.gz"
      sha256 "0b2fb3be6bb5284833143db30a1d9c489d2f35bcbf57c2980c3aeb5252bb4486"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.0/lightdash-cli-2.495.0-macos-x64.tar.gz"
      sha256 "6958e1ef6b9d95c9cae2edcd0c025128188bcd3dfa8bb17d1469a0531e1fef55"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.495.0/lightdash-cli-2.495.0-linux-x64.tar.gz"
    sha256 "f013b804cdc81f3ab519bf52e4fa4839cbd95f4a7566b60e38f61b6d95888c73"

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
