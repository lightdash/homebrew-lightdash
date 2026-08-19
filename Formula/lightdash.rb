class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.199.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.3/lightdash-cli-1.199.3-macos-arm64.tar.gz"
      sha256 "d7e0b73764d400f9959140e07f02fef77bb08aeaba905b69a2fca58cd5ac99d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.3/lightdash-cli-1.199.3-macos-x64.tar.gz"
      sha256 "312d323854edf2dfb7a940e5127e90be4fa8cc99de98fdcc121ca966dc64f065"
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
