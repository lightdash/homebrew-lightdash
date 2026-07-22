class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3447.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.0/lightdash-cli-0.3447.0-macos-arm64.tar.gz"
      sha256 "d74617ea29858917959fd28bc069d36646364a3fe8c09204803b27a8be54d2c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.0/lightdash-cli-0.3447.0-macos-x64.tar.gz"
      sha256 "c0ad79c5aacc088b88616741c36f7896475d137e411bfcb0f90ccdc8794aca39"
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
