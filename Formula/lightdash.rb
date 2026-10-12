class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.573.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.0/lightdash-cli-2.573.0-macos-arm64.tar.gz"
      sha256 "d1636aaa06605b2ed0fd4dfffcc9803252ee05784959133c3e54135d8d097a1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.0/lightdash-cli-2.573.0-macos-x64.tar.gz"
      sha256 "8d9380c2816fcbb2dff796db41d8028ca24d87ede30cc7f59c1c4924c037e1cc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.573.0/lightdash-cli-2.573.0-linux-x64.tar.gz"
    sha256 "88cc0b8db516295d6593b5efdc07e7473619538cbbe8674c89ee1a2718aa6044"

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
