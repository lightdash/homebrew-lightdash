class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.1/lightdash-cli-3.20.1-macos-arm64.tar.gz"
      sha256 "d6feef74f1ef6bb1ab2cc0186f7d7bf3bb508da048fbc3fcd6ee81d17967a2a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.1/lightdash-cli-3.20.1-macos-x64.tar.gz"
      sha256 "e1063a69aace2dff5fc5f32216fd59ea02695cae191e19e96c9a69cc1be16042"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.20.1/lightdash-cli-3.20.1-linux-x64.tar.gz"
    sha256 "f16f81e7c63ef7d7c8df257f78b10725726ee50994d0e47e02ac76f294601c53"

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
