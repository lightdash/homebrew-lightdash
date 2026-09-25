class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.2/lightdash-cli-2.344.2-macos-arm64.tar.gz"
      sha256 "16625e97eef0a9cc5ceb6f6be86ecfc90ca83d1da7435073a42945113806aeb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.2/lightdash-cli-2.344.2-macos-x64.tar.gz"
      sha256 "2c52afdef3a9e77630914533d6b33b034008e102e66d0ec11833d1e100fc0ecd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.2/lightdash-cli-2.344.2-linux-x64.tar.gz"
    sha256 "a4b38b03dd4f72867c1e8cb37e9b5f4047c668692e7ee963d81865e64f2a69a6"

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
