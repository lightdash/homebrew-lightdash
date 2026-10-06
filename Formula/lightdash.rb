class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.440.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.2/lightdash-cli-2.440.2-macos-arm64.tar.gz"
      sha256 "ebdb3e6a5425f0eb1a6e151518ac99046ff341650eb2b6675522ce4d2425f558"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.440.2/lightdash-cli-2.440.2-macos-x64.tar.gz"
      sha256 "01afd02cb58cbf0c4f95a9cd28ec8698b8663f4d10fe7542eb1303adec731141"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.440.2/lightdash-cli-2.440.2-linux-x64.tar.gz"
    sha256 "bb291302c6e17c9e27b572dd4934bc1518638b9a76b1194100364e9f216ce45b"

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
