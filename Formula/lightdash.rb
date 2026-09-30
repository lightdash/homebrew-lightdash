class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.386.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.0/lightdash-cli-2.386.0-macos-arm64.tar.gz"
      sha256 "bd20304555cbc3c7ee8716d3da8fbd0368ee4bba8a385b233f39da92e960e170"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.386.0/lightdash-cli-2.386.0-macos-x64.tar.gz"
      sha256 "73c63692ec140905e775f7d8b5d7da3caaba73b9dab57e5a7bdea3f843003ce5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.386.0/lightdash-cli-2.386.0-linux-x64.tar.gz"
    sha256 "98bba71320e07c69e340a4f42784327fa5ef680128a9086c74acb76a00dc65fa"

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
