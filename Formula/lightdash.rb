class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2414.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2414.0/lightdash-cli-0.2414.0-macos-arm64.tar.gz"
      sha256 "82a4c64ff84da72c2a0fd19e21be88c0e7077b4a52bbef9bb4b17d466d2dab07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2414.0/lightdash-cli-0.2414.0-macos-x64.tar.gz"
      sha256 "e56749e83420c00270d9639eb84556c9193e457bdbfe82dbe0987e248a292573"
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
