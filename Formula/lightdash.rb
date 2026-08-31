class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.64.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.1/lightdash-cli-2.64.1-macos-arm64.tar.gz"
      sha256 "5fb25b5514325b18a831b17d2cff47b33da00ce80fd36dcab78a0c1587490b6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.1/lightdash-cli-2.64.1-macos-x64.tar.gz"
      sha256 "2beb71e5eee5c63d6bee737cb779da8a0e4818985e360db6db7990a756f4a58e"
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
