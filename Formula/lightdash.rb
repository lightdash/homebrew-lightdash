class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2556.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.2/lightdash-cli-0.2556.2-macos-arm64.tar.gz"
      sha256 "95d364c533ccde37b01924c233e3bcd163fd96ac2a1d718914881edf363e55f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.2/lightdash-cli-0.2556.2-macos-x64.tar.gz"
      sha256 "91929dbe64122487c2cf1b8af0bf11ce19c64189436f2694fe7f34d1e4f7269d"
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
