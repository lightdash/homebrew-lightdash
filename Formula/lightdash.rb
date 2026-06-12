class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3153.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3153.1/lightdash-cli-0.3153.1-macos-arm64.tar.gz"
      sha256 "1115d952e1a36a545d95df419c39fd544d6d7eb6fc5fe15267b31c38f20ed8ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3153.1/lightdash-cli-0.3153.1-macos-x64.tar.gz"
      sha256 "bdc3c9b922c31f0c983f07b77e32414f06da0e6e3fb56d310fa4452550c87e5c"
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
