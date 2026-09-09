class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.173.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.0/lightdash-cli-2.173.0-macos-arm64.tar.gz"
      sha256 "ef11dd03cde552331bf37f2abb38ba6b0f055bcdefad0596c881444922b3a6b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.0/lightdash-cli-2.173.0-macos-x64.tar.gz"
      sha256 "c7892e82a159675066a8428fbf3fb6d78d8dff1328488ba937a210187dc8269c"
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
