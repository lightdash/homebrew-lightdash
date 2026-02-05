class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2433.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2433.0/lightdash-cli-0.2433.0-macos-arm64.tar.gz"
      sha256 "a6c08e384d363e8a75e047922f8ac41f9f7fb6118ec16b81936d16e502459280"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2433.0/lightdash-cli-0.2433.0-macos-x64.tar.gz"
      sha256 "81159029694ef6d0cec78b4f28257e5141eaef1aa0b9e48cd92f6673aa712cfd"
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
