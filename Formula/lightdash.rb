class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.16.0/lightdash-cli-3.16.0-macos-arm64.tar.gz"
      sha256 "475162d03761d5485c06d747120bc3851731b908cbedf8d73c55ba31ede6d6f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.16.0/lightdash-cli-3.16.0-macos-x64.tar.gz"
      sha256 "6c5bbb7ad2adb61cb619d4af9b925b4088cd6c7a11986221a70f5345c2dd69ec"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.16.0/lightdash-cli-3.16.0-linux-x64.tar.gz"
    sha256 "b9c11315ba494ab3ef0718e595f2b853b7ebd622080c7b3c2ff1e3d818fc215b"

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
