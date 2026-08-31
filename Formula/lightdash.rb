class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.62.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.2/lightdash-cli-2.62.2-macos-arm64.tar.gz"
      sha256 "fab66cd14603c99261920bd92974e1829ba39d712aafcda8aff7f99ebc267a4b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.2/lightdash-cli-2.62.2-macos-x64.tar.gz"
      sha256 "64325ff41fd34c0ef96b6856a393e5a67beadf47cc70030b3330356e53d243b1"
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
