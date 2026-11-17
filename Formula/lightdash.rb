class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.285.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.285.1/lightdash-cli-3.285.1-macos-arm64.tar.gz"
      sha256 "8e3c74a3ddd5c5d07e5de66d662b0a22acbefd76cfce2264839ab397d22d0848"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.285.1/lightdash-cli-3.285.1-macos-x64.tar.gz"
      sha256 "f78749a4c14d2d824be548d6f2ffa4ec1b848552e85bb85d11d1b6456e3fd2b5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.285.1/lightdash-cli-3.285.1-linux-x64.tar.gz"
    sha256 "a5e3ec94910695fd3acb79b2f91fe829fec6177393f85e295199a5be4486cae2"

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
