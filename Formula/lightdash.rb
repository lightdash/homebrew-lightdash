class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.10/lightdash-cli-0.2903.10-macos-arm64.tar.gz"
      sha256 "0a774da6e5a5a984f79b0fcb54298585d382993894f6f45f71d38898dedb7343"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.10/lightdash-cli-0.2903.10-macos-x64.tar.gz"
      sha256 "6df87254defcdf7afed93b4b11b45dd6863d0bdb2bef5784a2997d4ea18196b9"
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
