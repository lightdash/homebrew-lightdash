class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.313.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.313.0/lightdash-cli-2.313.0-macos-arm64.tar.gz"
      sha256 "01c977a7b0720d22ab37510c94e5360a52f567f1a3cf37f3a3f1885d570369b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.313.0/lightdash-cli-2.313.0-macos-x64.tar.gz"
      sha256 "7e07bb3ec1975a356d2e5119c1cd40413a8bb75c633a928e9ca3e59a5e462bbb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.313.0/lightdash-cli-2.313.0-linux-x64.tar.gz"
    sha256 "ca2b1b305e907ea428b48aa71f4b01348fa24256a76a451a30a5830ff7d08d36"

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
