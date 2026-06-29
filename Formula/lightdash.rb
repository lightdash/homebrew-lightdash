class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3260.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.2/lightdash-cli-0.3260.2-macos-arm64.tar.gz"
      sha256 "5f6624071cc571c80cdb5331ff2341dfb11e41fdc988cf867f49e7e473bde7ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.2/lightdash-cli-0.3260.2-macos-x64.tar.gz"
      sha256 "d671534e13f644bd2c8a6753d5c36d31aeae3fae67e3219831155555383a071f"
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
