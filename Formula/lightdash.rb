class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2774.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.2/lightdash-cli-0.2774.2-macos-arm64.tar.gz"
      sha256 "db6c30ffb61d539281b4bde708e61f14e639fdd35e7c16e3263bca4e16d5c46b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2774.2/lightdash-cli-0.2774.2-macos-x64.tar.gz"
      sha256 "aa7fc40d231eb3a0901cfba029e0a32f50a119b424096c75e1c55d3e5f06a028"
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
