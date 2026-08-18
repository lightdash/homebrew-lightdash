class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.198.0/lightdash-cli-1.198.0-macos-arm64.tar.gz"
      sha256 "825fcc3c462ef946910ffe21f571a7bad5f9a9152744ac3ce611511257446fd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.198.0/lightdash-cli-1.198.0-macos-x64.tar.gz"
      sha256 "a3efb1dcce04eab21f4564ba3665418bcbf4ad35e841b13235c772ccc34f700c"
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
