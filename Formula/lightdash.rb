class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2799.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2799.0/lightdash-cli-0.2799.0-macos-arm64.tar.gz"
      sha256 "0f102ba2aa86f3c4c6154f3b87bba61dfeff260822a187b48be0243bc75bbdc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2799.0/lightdash-cli-0.2799.0-macos-x64.tar.gz"
      sha256 "92efc39d879b1ab01aae9546f39753a53afe55af7af199534aff052f42cf3504"
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
