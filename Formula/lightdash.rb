class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.279.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.0/lightdash-cli-2.279.0-macos-arm64.tar.gz"
      sha256 "97417a26a1f9caf5e0f035a467ac587ec8d70b5015b8d7412ca9fc9fb5011fa3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.0/lightdash-cli-2.279.0-macos-x64.tar.gz"
      sha256 "6dcbe9d23eb0a07fdd0ea079c97ed80299239b56696f3ab6bf9622aecb712e0e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.0/lightdash-cli-2.279.0-linux-x64.tar.gz"
      sha256 "2614eaf7c908d7b91d746c89bde51e97e60805c3335dda1f070a3b749157702c"
    end
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
