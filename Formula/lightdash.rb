class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.99.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.2/lightdash-cli-1.99.2-macos-arm64.tar.gz"
      sha256 "6e8d1b173b86eb4b535c3e51526ab28481fda828b105442f3331a7c45015e521"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.2/lightdash-cli-1.99.2-macos-x64.tar.gz"
      sha256 "9a3156f1ac0af36bb9bcac525458302a55b4bcd9716050fa5b446d9147e0d69d"
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
