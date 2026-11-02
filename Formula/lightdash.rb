class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.118.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.2/lightdash-cli-3.118.2-macos-arm64.tar.gz"
      sha256 "39063176daeb50b5ed80c626a65c04e0674837bf2c3ccca57e3d0cb24eddb364"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.2/lightdash-cli-3.118.2-macos-x64.tar.gz"
      sha256 "beeb6e7e72c4dd29105d2f7518ddba9ae5e7e13496e0374d4254a4e5bf77c58e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.118.2/lightdash-cli-3.118.2-linux-x64.tar.gz"
    sha256 "20e95a2575cff20570c5618733cd9442f5eca7b05c6e177f8aa409c8de2dec55"

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
