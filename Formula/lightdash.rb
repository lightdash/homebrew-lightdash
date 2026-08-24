class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.241.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.241.0/lightdash-cli-1.241.0-macos-arm64.tar.gz"
      sha256 "9a9162c6ba95a7ad5b71e410809384e9a483c9bb7cca305d3081323cf5d11dbc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.241.0/lightdash-cli-1.241.0-macos-x64.tar.gz"
      sha256 "24bfa846e6ce3901e11c2e479e31842da80db828fa59d7e605a1ceab6866e679"
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
