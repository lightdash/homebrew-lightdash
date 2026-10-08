class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.481.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.1/lightdash-cli-2.481.1-macos-arm64.tar.gz"
      sha256 "23e3d8417512a3a36a5fafc2c6d6cfe7bb55b9620872fe91af94a96faadd3105"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.1/lightdash-cli-2.481.1-macos-x64.tar.gz"
      sha256 "9cd1f27cd4eecdd1ca9dda22ccf762e2c59b96e3fb414d15daf16b7f1c4c33a2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.481.1/lightdash-cli-2.481.1-linux-x64.tar.gz"
    sha256 "9a68a8f39f77813169db550e195cc2854e80926dee74b3bc774231fa494d08f3"

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
