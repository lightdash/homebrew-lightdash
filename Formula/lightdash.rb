class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3337.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3337.1/lightdash-cli-0.3337.1-macos-arm64.tar.gz"
      sha256 "3b9b081c1e994454173e271d13cc9aae4496e962b50955964564ee463414f5cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3337.1/lightdash-cli-0.3337.1-macos-x64.tar.gz"
      sha256 "62798835fe6f15bb5655771f17af7ae62e112dae02df5b034b7ed591f50b41b2"
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
