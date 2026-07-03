class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3306.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3306.0/lightdash-cli-0.3306.0-macos-arm64.tar.gz"
      sha256 "a3f3087b5ea33dc72615af8f4c2773c572497cb81670a3f79eb718a5a57be7af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3306.0/lightdash-cli-0.3306.0-macos-x64.tar.gz"
      sha256 "9abcc51fc979d7e876486c29f7e510cae517b3ab26daa32fa856449d6806faa0"
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
