class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.440.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.0/lightdash-cli-2.440.0-macos-arm64.tar.gz"
      sha256 "56941d076a43c2c0a5784440938f6f8df57c7b43b7cd12c3216eb5a41a3f9df8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.0/lightdash-cli-2.440.0-macos-x64.tar.gz"
      sha256 "91f8036ab859f9e9c13f739aebd395c6c7009ce8482405e66d060f5f842de949"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.440.0/lightdash-cli-2.440.0-linux-x64.tar.gz"
    sha256 "49145a53d9438b27256723a2ba754da04de23e7474adc71764eff45a36122f9c"

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
