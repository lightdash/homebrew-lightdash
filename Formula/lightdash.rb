class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.100.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.2/lightdash-cli-1.100.2-macos-arm64.tar.gz"
      sha256 "e640afbd2e3a4d51c2b1fb741a87ebe518ac7d2785e43aeea568e9e63eeaab41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.100.2/lightdash-cli-1.100.2-macos-x64.tar.gz"
      sha256 "29ed336708bcedbd8d5286225783802e131aa64fdc9c585ecc2224509e8286cb"
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
