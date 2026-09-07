class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.140.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.0/lightdash-cli-2.140.0-macos-arm64.tar.gz"
      sha256 "85c544aab47c07efae080f40a6eb5dc39d643f3716a0b9174facba4c53c5806f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.0/lightdash-cli-2.140.0-macos-x64.tar.gz"
      sha256 "a757380cd115b60117a7f1667f164c0d4214e16e268b06ce5687b8ce3097eba5"
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
