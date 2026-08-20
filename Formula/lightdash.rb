class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.220.0/lightdash-cli-1.220.0-macos-arm64.tar.gz"
      sha256 "10aa35f0631b5fb483a786838f9620ac173937d30e5fb03c255eb7a3910d4ae7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.220.0/lightdash-cli-1.220.0-macos-x64.tar.gz"
      sha256 "5f502ace749a4753daae44766f855b722c008e94f28d23a13ac854a7a0e41827"
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
