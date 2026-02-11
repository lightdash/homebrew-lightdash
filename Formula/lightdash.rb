class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2454.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.2/lightdash-cli-0.2454.2-macos-arm64.tar.gz"
      sha256 "94323e6fc81b5c5ff8c0d81f09bad86548e0daf8d76dc90fca8af08afe9bf920"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.2/lightdash-cli-0.2454.2-macos-x64.tar.gz"
      sha256 "5ceb16def12cf21da5c57e5a313f3460486caab8711664b2f5f194eb2d6c2bff"
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
