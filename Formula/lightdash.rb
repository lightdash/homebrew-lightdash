class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.185.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.1/lightdash-cli-3.185.1-macos-arm64.tar.gz"
      sha256 "f8f86d45813dbd02d95c035e6daada6bb0f9b4a00b36e8fc1c5a90a3679811e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.1/lightdash-cli-3.185.1-macos-x64.tar.gz"
      sha256 "bd56823517b87b9f1a8741b124fa870dbf816cbff3527565a524e64852c94792"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.185.1/lightdash-cli-3.185.1-linux-x64.tar.gz"
    sha256 "33a7ae4245eb9c6a051608a3d662086d52e0fdb689c1e1c465666cc02d0493c6"

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
