class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.205.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.1/lightdash-cli-2.205.1-macos-arm64.tar.gz"
      sha256 "e6660cf260c89b8f84a0cba7d9b7f232b95fc6522ff8166dc71d38e7bb4ccb09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.1/lightdash-cli-2.205.1-macos-x64.tar.gz"
      sha256 "7976e6f0cd14631cae449ed449029fa8c6484f784dc132e66a58d317fafa835b"
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
