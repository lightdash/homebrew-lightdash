class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.181.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.181.0/lightdash-cli-2.181.0-macos-arm64.tar.gz"
      sha256 "3a21e0d38525fe6abb74d042e9af83f3e545ea131d00a40866c833e8d24bfd87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.181.0/lightdash-cli-2.181.0-macos-x64.tar.gz"
      sha256 "e38ad545299565397199b07316b2b8c22c8b37c96251006a7a2e971deacee1f6"
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
