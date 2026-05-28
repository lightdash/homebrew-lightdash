class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3034.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3034.0/lightdash-cli-0.3034.0-macos-arm64.tar.gz"
      sha256 "58f0ca80c420d455272533cbdaff247c42306872d6ec9b3b969165672034e6ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3034.0/lightdash-cli-0.3034.0-macos-x64.tar.gz"
      sha256 "8794afc7a4dd4d5df102754cd9f444536326f6f4479c80086e818db3f517825f"
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
