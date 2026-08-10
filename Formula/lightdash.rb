class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.114.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.114.0/lightdash-cli-1.114.0-macos-arm64.tar.gz"
      sha256 "276e50bb58a835ffc8fb7260b65fbe6826568a764684d705634a875a6a5c018e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.114.0/lightdash-cli-1.114.0-macos-x64.tar.gz"
      sha256 "71415a9f15025ac729bd9b3bf7f2987549a8c9d25f81f1be99c8dae3b6cdef20"
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
