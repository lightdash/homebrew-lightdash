class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2775.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.1/lightdash-cli-0.2775.1-macos-arm64.tar.gz"
      sha256 "098bbbdb1a5a536c133d8734142127eae842ed022e1415f84ef873725986ed8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.1/lightdash-cli-0.2775.1-macos-x64.tar.gz"
      sha256 "176625fb7725b31dd3f748678adbfcdc95d9c19a99828bdc2a11a576867f7b2e"
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
