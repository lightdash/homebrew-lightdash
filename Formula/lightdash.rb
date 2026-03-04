class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2569.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2569.0/lightdash-cli-0.2569.0-macos-arm64.tar.gz"
      sha256 "e4d42ee6be5e0d21948eab23f10d256e6f0d56f449ca7ed16aa9f49def7051b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2569.0/lightdash-cli-0.2569.0-macos-x64.tar.gz"
      sha256 "987f0558cecb29b2f08645fd601594fccee1b8c521bbfab0b4cfbdfb28e00843"
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
