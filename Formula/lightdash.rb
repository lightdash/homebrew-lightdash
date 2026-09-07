class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.135.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.0/lightdash-cli-2.135.0-macos-arm64.tar.gz"
      sha256 "c1c03756a74ba29ac0f4b087e492b07e94be231ee1fdbe5d47357ac1740fb71e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.0/lightdash-cli-2.135.0-macos-x64.tar.gz"
      sha256 "7a0fb4cadbe4d88e19cc7f8903b110632816ff29eb0f54b26ba290739f7656a7"
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
