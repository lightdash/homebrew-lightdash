class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.142.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.142.1/lightdash-cli-1.142.1-macos-arm64.tar.gz"
      sha256 "3949161b930af0ccd9affb264e0e23fd7a9efd07813fcba972e34590f915c9e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.142.1/lightdash-cli-1.142.1-macos-x64.tar.gz"
      sha256 "0d28f8809f695bbe266a7db7885ffcd4484a0b18b43650e55a7d338f7fedfdb6"
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
