class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.1/lightdash-cli-2.631.1-macos-arm64.tar.gz"
      sha256 "f18290702d900d4783ccad7cf83d4578493b53178165740994faf8574529d08a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.1/lightdash-cli-2.631.1-macos-x64.tar.gz"
      sha256 "b7373d60812301d007ed5c576ca7b7dd7e5e16d9c50270dc8a49c90d7601add4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.1/lightdash-cli-2.631.1-linux-x64.tar.gz"
    sha256 "65e8c53c8252139b3770069c5ce5068e79eae4c0941825f02d74a92eda09ec3d"

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
