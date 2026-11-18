class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.314.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.314.0/lightdash-cli-3.314.0-macos-arm64.tar.gz"
      sha256 "d5402644b23a97b61e10b6f27c7ab92829917b63e28868d2e2f292210cada5dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.314.0/lightdash-cli-3.314.0-macos-x64.tar.gz"
      sha256 "0adb4877f4da1cc9057e578024be9c769b87bd8f75cad8defdab00218ca5be99"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.314.0/lightdash-cli-3.314.0-linux-x64.tar.gz"
    sha256 "0451e2f7b651af37d2a5b4149d59592100c58f5bd326ca93c3d965d169e456c7"

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
