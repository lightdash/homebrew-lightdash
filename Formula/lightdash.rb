class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2332.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.1/lightdash-cli-0.2332.1-macos-arm64.tar.gz"
      sha256 "07af40f6d8e3f69c6694236de39c280acb36ed04c49b737bc06bdd316ef0bb7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.1/lightdash-cli-0.2332.1-macos-x64.tar.gz"
      sha256 "a953327bc355be99c911860d189bd3fa4536693e1285e5310f7a9d8a4bff9382"
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
