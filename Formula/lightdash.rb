class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2413.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2413.0/lightdash-cli-0.2413.0-macos-arm64.tar.gz"
      sha256 "41e7d221308566015747f02f4b7827fa470a14bc4c485986443412c64ec8de1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2413.0/lightdash-cli-0.2413.0-macos-x64.tar.gz"
      sha256 "93106833ab2bdc15f43c595369b4597265f661ad89d36a061c9358d2b14e7d75"
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
