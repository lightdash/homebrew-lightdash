class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2505.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.3/lightdash-cli-0.2505.3-macos-arm64.tar.gz"
      sha256 "5c7aa0fa5c9f79bbb868ad9b90d73bbc822bf094847c715807ff84d6affe33b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.3/lightdash-cli-0.2505.3-macos-x64.tar.gz"
      sha256 "dccae41aa7fc6a93aa14011856957c842970c6da7d6970d007c13badc3c0ae19"
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
