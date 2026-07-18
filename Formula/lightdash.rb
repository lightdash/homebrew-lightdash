class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3416.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.2/lightdash-cli-0.3416.2-macos-arm64.tar.gz"
      sha256 "ed0abed0b1063533dc1a8495662686f46aaa8c1a51e13a1ee3f05b36c4f4fa1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.2/lightdash-cli-0.3416.2-macos-x64.tar.gz"
      sha256 "bbb4582acf1b0c68eebc58b2b9f444c5a687b5506d3fe2f412891878e622658a"
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
