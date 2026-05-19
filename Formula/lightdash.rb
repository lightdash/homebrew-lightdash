class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2980.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2980.0/lightdash-cli-0.2980.0-macos-arm64.tar.gz"
      sha256 "b22b5f03f6f7fbb45835104e2cd1f4959c8c42154a889272fe388d4b919fab0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2980.0/lightdash-cli-0.2980.0-macos-x64.tar.gz"
      sha256 "b541ff917a2ad12a7bef851b4ea0d0c5a3e21761adb09e9b9cae6cfde9db1f65"
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
