class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2948.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2948.0/lightdash-cli-0.2948.0-macos-arm64.tar.gz"
      sha256 "f9ed76b30ba038fa402a30443ada82d5e7c9b584fc080e50a0a8ab5bc5dbe00a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2948.0/lightdash-cli-0.2948.0-macos-x64.tar.gz"
      sha256 "edd06d23ec8ec89bf05c220a98e359bd445f6a3528fbab8b98ac85fa3e85a373"
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
