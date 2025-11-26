class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2209.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.3/lightdash-cli-0.2209.3-macos-arm64.tar.gz"
      sha256 "56d05b81d12199358f57bede8abdcb0b9fde46dda67fefb6b410b647d2eaa108"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.3/lightdash-cli-0.2209.3-macos-x64.tar.gz"
      sha256 "fd8dcddc5fb4e504da66203af34ead90c4f72ca6d39dc0d78932e75873334b6e"
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
