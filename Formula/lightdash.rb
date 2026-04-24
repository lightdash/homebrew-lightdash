class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2809.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2809.0/lightdash-cli-0.2809.0-macos-arm64.tar.gz"
      sha256 "9705f1486d1a53c4873a8b64d721de38d41101172d16353c9390bab6e0bad9d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2809.0/lightdash-cli-0.2809.0-macos-x64.tar.gz"
      sha256 "723affe5b98daf9c35bd39f811fbcba33f3c83fb852e0cb3ac8ba755def39d57"
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
