class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.0/lightdash-cli-3.128.0-macos-arm64.tar.gz"
      sha256 "b9a82225c614e41218a531625b673b1e48ec547466aed965378745dc7e59275d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.0/lightdash-cli-3.128.0-macos-x64.tar.gz"
      sha256 "d60e7fa7a257f25b18c7f95714afbe697b7070704c9d6e050d23aa9f52586899"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.0/lightdash-cli-3.128.0-linux-x64.tar.gz"
    sha256 "88c827600ed0f3e9444e3696ebfe9c1ad42225b574922811183ad59e2cb30efd"

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
