class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2811.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.0/lightdash-cli-0.2811.0-macos-arm64.tar.gz"
      sha256 "0692a4099cd187678793d24104a10b1d4c3ed7f59ed245ed229fdeda5c1bd2b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.0/lightdash-cli-0.2811.0-macos-x64.tar.gz"
      sha256 "27f1fa248207f1f4357c290e076640d43473c0d69b1d08335be4dec1d1b1d082"
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
