class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.48.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.48.1/lightdash-cli-2.48.1-macos-arm64.tar.gz"
      sha256 "2c1f1771c565688e40e1c1032ce948d86361fca119c73fa505496d7d3bccbb0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.48.1/lightdash-cli-2.48.1-macos-x64.tar.gz"
      sha256 "c006840486e24099b2a37656a4b490298a6688853cb6846989889e4a69bf86a0"
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
