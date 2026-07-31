class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.1/lightdash-cli-1.57.1-macos-arm64.tar.gz"
      sha256 "f6f61a94a10d18b67a2f233f79d112c25ba06b6d6343c8306d057a9617140924"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.1/lightdash-cli-1.57.1-macos-x64.tar.gz"
      sha256 "4c0017ace96d89e780217d8d9e22f9c78a037491ecd24ffa4f3cc109fa41295b"
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
