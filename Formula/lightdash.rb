class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3162.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.3/lightdash-cli-0.3162.3-macos-arm64.tar.gz"
      sha256 "9e20a55f2e33a86bf2d08d63fcaf9a9dd02822dd2bc193aaa3a6b9ddc8486087"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.3/lightdash-cli-0.3162.3-macos-x64.tar.gz"
      sha256 "6f3872a587ddb96d0044f1393ca0b830cd7f9a4f4412ad58c9b88f952f1edca5"
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
