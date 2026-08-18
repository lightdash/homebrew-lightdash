class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.188.0/lightdash-cli-1.188.0-macos-arm64.tar.gz"
      sha256 "abf8176d44701f11ac27affd61811deba8ad155626364b90da7e9ae313e948b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.188.0/lightdash-cli-1.188.0-macos-x64.tar.gz"
      sha256 "6eb65d8a668c902a7ac4bc398c153b122bbda6fdd74d9b4cd331d481089350c1"
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
