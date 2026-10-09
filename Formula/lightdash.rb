class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.513.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.513.0/lightdash-cli-2.513.0-macos-arm64.tar.gz"
      sha256 "f427fd7946ef7a357154d28a137df3762931c6817da95ff761cc6a0637840ae6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.513.0/lightdash-cli-2.513.0-macos-x64.tar.gz"
      sha256 "a2f5904260e6b353817738b5823365ab50007064afdf7783a72f3d3ef1e95a83"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.513.0/lightdash-cli-2.513.0-linux-x64.tar.gz"
    sha256 "6da1d19aed84c5f1b59906a63550b3126ed09b87ba6c22ac919606ce5618f372"

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
