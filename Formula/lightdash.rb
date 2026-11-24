class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.391.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.391.1/lightdash-cli-3.391.1-macos-arm64.tar.gz"
      sha256 "2e8554e8998a40856d6be763a95a2f0481af0166c504e9d156f1f2de1ad1157b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.391.1/lightdash-cli-3.391.1-macos-x64.tar.gz"
      sha256 "ec5b34453c87485c875d6ea63871ae02834c02f1fdf970dcc44f35a7402eb0b9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.391.1/lightdash-cli-3.391.1-linux-x64.tar.gz"
    sha256 "b3ec51f65f43a09a68cd145d8f81a93a3ef489adaaa74daef0746ce12b0a186a"

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
