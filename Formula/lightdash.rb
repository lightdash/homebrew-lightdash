class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.86.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.2/lightdash-cli-1.86.2-macos-arm64.tar.gz"
      sha256 "7ecd9b4b8a2a18460084921471119035627d4e9f6ad1f2030994750d4409dff2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.2/lightdash-cli-1.86.2-macos-x64.tar.gz"
      sha256 "9d5e4d057c10b550544d6b15979be64551fd433feef14306ede8c1caca03315b"
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
