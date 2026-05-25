class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3012.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.3/lightdash-cli-0.3012.3-macos-arm64.tar.gz"
      sha256 "ef8a70a0eb9cb9c1127c952bd2cfd7c270cdd2f3ce5d96f68f4a844e30f3fef2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3012.3/lightdash-cli-0.3012.3-macos-x64.tar.gz"
      sha256 "51cd1408fb02d727c625f9d36a5ce14509acb78939668f5f1ca082210e52fb58"
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
