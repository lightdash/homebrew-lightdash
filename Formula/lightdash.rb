class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.395.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.395.1/lightdash-cli-2.395.1-macos-arm64.tar.gz"
      sha256 "acf2ff5b58179d8888a5118951275c36849a01554c9f5df2a4fd5fd5f8aa7c2e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.395.1/lightdash-cli-2.395.1-macos-x64.tar.gz"
      sha256 "596c1b44abb690ac13764f6522c4c12efdde27f5c183b97c7868a62aa0b4e7b9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.395.1/lightdash-cli-2.395.1-linux-x64.tar.gz"
    sha256 "06379a39e6d8217bdbfd957d379e887315bd0e7292ef1c416d6c71aa0087cdad"

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
