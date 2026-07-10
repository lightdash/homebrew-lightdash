class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3358.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3358.0/lightdash-cli-0.3358.0-macos-arm64.tar.gz"
      sha256 "e2a5781953adc2ebb33e3a8bac51efe90ed84690d33895d7665d795c866d1d95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3358.0/lightdash-cli-0.3358.0-macos-x64.tar.gz"
      sha256 "073b8620cecdbd8769ff69b0da4215c1387824e1d21e22da021baba62f1d7c5c"
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
