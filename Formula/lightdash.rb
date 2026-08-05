class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.91.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.1/lightdash-cli-1.91.1-macos-arm64.tar.gz"
      sha256 "a5c31e9ee58a8e0930995c236f13596453f58e5babbf4bb132296cb4499e369b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.1/lightdash-cli-1.91.1-macos-x64.tar.gz"
      sha256 "db4a283fa1fee8b3694c2970277597a6bb8648a6699b81b9ed1044286a46f607"
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
