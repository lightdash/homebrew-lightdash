class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.4/lightdash-cli-3.411.4-macos-arm64.tar.gz"
      sha256 "b998818a27f6ed7857f7eec475ce187d0e5b33a271cd27e349e2d78173edb2f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.4/lightdash-cli-3.411.4-macos-x64.tar.gz"
      sha256 "0c10d21cf111826d2f933033eee43d56ae180bbde1452e5f52a13259ee1308de"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.4/lightdash-cli-3.411.4-linux-x64.tar.gz"
    sha256 "d870c418b86a2612ff7e9fb6938a95ccb4d7713408f5507129c3edff5c331dc9"

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
