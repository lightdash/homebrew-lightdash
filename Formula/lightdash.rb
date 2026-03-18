class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2636.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2636.0/lightdash-cli-0.2636.0-macos-arm64.tar.gz"
      sha256 "92c989e68fb796fa14fc42f3b9dc834a09a41095615220d6566f2fa4f56a5ec6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2636.0/lightdash-cli-0.2636.0-macos-x64.tar.gz"
      sha256 "704eeb34f574d44a2dc71ce002f183bc71f7242d8026a59d6648acae923e4da1"
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
