class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2601.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2601.0/lightdash-cli-0.2601.0-macos-arm64.tar.gz"
      sha256 "961cf04aacee5af5dea4452e537c58798bcaa13d01e4238a291cc0c29e7ceedc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2601.0/lightdash-cli-0.2601.0-macos-x64.tar.gz"
      sha256 "cd99d84169cadaffeaa06ab9e5c2ded11dbda07af797d2af171e064c229da587"
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
