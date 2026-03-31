class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2695.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2695.0/lightdash-cli-0.2695.0-macos-arm64.tar.gz"
      sha256 "917dd4f13e4850c3b087303d782b66d4d27da074f4b1d54d5a8a59e527c6ad05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2695.0/lightdash-cli-0.2695.0-macos-x64.tar.gz"
      sha256 "2db4936162b24164c6c4ba811e86d423f3148504df3be500f39f0940521cf543"
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
