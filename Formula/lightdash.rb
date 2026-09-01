class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.78.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.78.0/lightdash-cli-2.78.0-macos-arm64.tar.gz"
      sha256 "0e1b7a61878ac466fa80e559a9c78cf6bc80b0a902d80c8fcec5cbec33951cd2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.78.0/lightdash-cli-2.78.0-macos-x64.tar.gz"
      sha256 "6ff008394d22709aded146d640e8fc370bb958c2b45c51574bd6c5a64933fd9d"
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
