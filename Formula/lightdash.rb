class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2675.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.3/lightdash-cli-0.2675.3-macos-arm64.tar.gz"
      sha256 "68639d8861a9b1ee54fd5caded91008771501334fe146a900c391bca6ecb32a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.3/lightdash-cli-0.2675.3-macos-x64.tar.gz"
      sha256 "57df2ffa8b57c2f71ad7145f0be8c4fd2e9c866b9b74b14239192f4191b1df82"
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
