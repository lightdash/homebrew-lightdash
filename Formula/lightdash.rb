class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.0/lightdash-cli-2.605.0-macos-arm64.tar.gz"
      sha256 "83b329ce3895dbae2a3d3779a7e90dc613a174777c85d8f395f9f534c21566df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.0/lightdash-cli-2.605.0-macos-x64.tar.gz"
      sha256 "1fd90f91ed5415cde5dc35668945037ef369289c6378a9d2eb62c623fa4d541c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.0/lightdash-cli-2.605.0-linux-x64.tar.gz"
    sha256 "e1ee41e275302b12f1c2e5f92849f0ad135c1e58315b61d8031c74d42e8323e6"

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
