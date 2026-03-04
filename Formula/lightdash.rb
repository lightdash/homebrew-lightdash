class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2565.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.2/lightdash-cli-0.2565.2-macos-arm64.tar.gz"
      sha256 "00eb5bcabbc180ddfa8478b7707d42d8706dff0428b05394960f6a43dc7a966d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.2/lightdash-cli-0.2565.2-macos-x64.tar.gz"
      sha256 "e8eac7a79442e09b9e3ec4f90c9d1c9daf65f16114329768ce14fe5f525ec874"
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
