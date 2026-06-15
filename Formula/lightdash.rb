class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3162.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.1/lightdash-cli-0.3162.1-macos-arm64.tar.gz"
      sha256 "dbbb8f3e9585fb9f098e09d7107f2cc855e872c91349ffca58892745ddd771d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.1/lightdash-cli-0.3162.1-macos-x64.tar.gz"
      sha256 "19da5e7a5dd6a1f6055831d3648f011a08dd8f7ba18376135fd2f64d162a6e86"
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
