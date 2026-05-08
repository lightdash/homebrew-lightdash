class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.1/lightdash-cli-0.2903.1-macos-arm64.tar.gz"
      sha256 "5fb9de369901560944043e48bc03be3e1b57f7064e40dd5c581cc44baf29db84"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.1/lightdash-cli-0.2903.1-macos-x64.tar.gz"
      sha256 "82ee8c576bb4879fd4cffbfe81777254dd6b9124f36b89ef2779304d4efb17d4"
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
