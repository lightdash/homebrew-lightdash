class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.168.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.2/lightdash-cli-2.168.2-macos-arm64.tar.gz"
      sha256 "ad30f8ff6c81b8ea69f98a4d776b17183f97a94df020f7c8892f60b609a5cbc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.168.2/lightdash-cli-2.168.2-macos-x64.tar.gz"
      sha256 "63113fe7c38d81bc53e0f96b20534e4f4f79ca8b75acd1e7afbf0a8cae0d088c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
