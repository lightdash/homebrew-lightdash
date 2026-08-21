class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.5/lightdash-cli-1.235.5-macos-arm64.tar.gz"
      sha256 "0e3712dfbe7bd109c037354956238dbb77b677ee7d11d12372af8ab3bd7c9eff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.5/lightdash-cli-1.235.5-macos-x64.tar.gz"
      sha256 "b3951b457e1d7969bc03f29d566a3abc01e6c58511959225b4255b2b17c6e17b"
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
