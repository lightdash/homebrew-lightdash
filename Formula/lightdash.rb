class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2183.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2183.1/lightdash-cli-0.2183.1-macos-arm64.tar.gz"
      sha256 "43ecc60339d883ed92bbc571447ab884a551f1b9776855f9edcd07494fba8426"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2183.1/lightdash-cli-0.2183.1-macos-x64.tar.gz"
      sha256 "0e3132e372e39ee000bb9e1f16d00e91508087d10674e8dbd785d6a18eee7f88"
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
