class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.0/lightdash-cli-2.243.0-macos-arm64.tar.gz"
      sha256 "f7a4f187f79722d8bb9aefe08eebc3a7189fc022ce0d28c7be4003366eeeb963"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.0/lightdash-cli-2.243.0-macos-x64.tar.gz"
      sha256 "3420a665a632db7ac19685dd21db524ea8827e9ebfaff29e51d95c97fe20b99e"
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
