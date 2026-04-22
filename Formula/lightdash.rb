class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2782.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2782.0/lightdash-cli-0.2782.0-macos-arm64.tar.gz"
      sha256 "249af37def0fb6eeb5c69d00b9789bbafb4e3fbe5f08f1a073925c4767f96a79"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2782.0/lightdash-cli-0.2782.0-macos-x64.tar.gz"
      sha256 "3075e5bc20bb6f1342bf593d5230221b401f68fe3a45ef66ebd9d56f6de52629"
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
