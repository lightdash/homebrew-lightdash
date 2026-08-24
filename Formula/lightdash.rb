class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.240.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.0/lightdash-cli-1.240.0-macos-arm64.tar.gz"
      sha256 "ccac52d6681923f6ac00ec251434d73c25167173c1fdca65b4bf39d3c1ca6d27"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.0/lightdash-cli-1.240.0-macos-x64.tar.gz"
      sha256 "69e55c532cdb6ed7a2790de70758c07db22e9d5871f12d03501226d5a2154243"
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
