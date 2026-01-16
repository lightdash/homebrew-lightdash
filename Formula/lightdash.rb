class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2348.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.1/lightdash-cli-0.2348.1-macos-arm64.tar.gz"
      sha256 "781431fe0be443233b29845cdc801256aadfdc0d00c550436f6877ccd204aaad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.1/lightdash-cli-0.2348.1-macos-x64.tar.gz"
      sha256 "71687dbbb93ab39dfa41f070ac4e7fcb19daa4f51e497c6925b8343015087870"
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
