class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2726.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2726.0/lightdash-cli-0.2726.0-macos-arm64.tar.gz"
      sha256 "d8d4dd280e1aae39098c67581c8c04cfef711cb57ac3374e659e716dc3126150"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2726.0/lightdash-cli-0.2726.0-macos-x64.tar.gz"
      sha256 "4000937234f3c2bc5637cc671a644c7cbcf2b0035fbecac9192a6c33d2e1863e"
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
