class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.120.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.2/lightdash-cli-3.120.2-macos-arm64.tar.gz"
      sha256 "897c7c037616eab6312baf3c0073d0330e909ec3bf28d440c84d91e0fc7582be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.2/lightdash-cli-3.120.2-macos-x64.tar.gz"
      sha256 "f1df77e9708a7083d22df861630d8480440884ea503855850e2bee1146a2aa44"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.120.2/lightdash-cli-3.120.2-linux-x64.tar.gz"
    sha256 "857a1bb0dc5d66e410317a3e0e6d86d6c31a1b44e9bf284a53ceb85113149ea6"

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
