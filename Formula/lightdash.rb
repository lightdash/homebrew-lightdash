class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.53.0/lightdash-cli-2.53.0-macos-arm64.tar.gz"
      sha256 "33e93bd27fd81fa2866609c358c88ea74276dfc55f90c0f425300f75f8d3e170"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.53.0/lightdash-cli-2.53.0-macos-x64.tar.gz"
      sha256 "f5ddda14cf9ef22c72ca2c8c412a9597f90014c5c85e7a6c7b0ff98912dbfaee"
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
