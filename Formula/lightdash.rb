class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.136.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.136.1/lightdash-cli-1.136.1-macos-arm64.tar.gz"
      sha256 "35f82ee1f8e0333ed0ff5f774ce968af269f2041167f9050762f4353dfbbfa03"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.136.1/lightdash-cli-1.136.1-macos-x64.tar.gz"
      sha256 "6e0e2f886bce2a5135cbb08e1ab99f6dbc97ecc296bc5e6a9aec4cdcb4aca7cc"
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
