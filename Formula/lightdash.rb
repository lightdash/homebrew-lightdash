class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2440.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2440.0/lightdash-cli-0.2440.0-macos-arm64.tar.gz"
      sha256 "1c8d7bf6909f2e283a9262f552c457f2c4f2c1e3f030e0a1ef904a2715dd0fdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2440.0/lightdash-cli-0.2440.0-macos-x64.tar.gz"
      sha256 "e908d36b69b495348fbb71c33e432370e8ba85a9d7e6d9a9997ebd03f938d08c"
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
