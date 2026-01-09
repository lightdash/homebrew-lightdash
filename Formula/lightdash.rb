class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2323.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2323.1/lightdash-cli-0.2323.1-macos-arm64.tar.gz"
      sha256 "31000f632dfcdcf3a4481666230fd0edb631a15c5edbe6d5a37afa732a5ac49a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2323.1/lightdash-cli-0.2323.1-macos-x64.tar.gz"
      sha256 "f86b6901ce7ec74541e66fbd4f586c7a28703942cd63d188665cea014917fd02"
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
