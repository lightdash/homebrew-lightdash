class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3042.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3042.0/lightdash-cli-0.3042.0-macos-arm64.tar.gz"
      sha256 "4d303fdf0e309e0c0fbdfd4cf69cc80918fab3346bccb9fc127bcd4359fcdfaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3042.0/lightdash-cli-0.3042.0-macos-x64.tar.gz"
      sha256 "0c663f016f8be472fa11b59c862616afc6d20887a0f7549cb5e2026515e0ad91"
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
