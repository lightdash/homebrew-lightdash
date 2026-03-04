class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2563.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2563.0/lightdash-cli-0.2563.0-macos-arm64.tar.gz"
      sha256 "99ac409ff601166f28227548df642c7611262c9c33c091d7d9205a3ae028161b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2563.0/lightdash-cli-0.2563.0-macos-x64.tar.gz"
      sha256 "28993bf282518d6fbe07fb003a6d6b4f006d8e6925582aaa26edbd51c6a546f0"
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
