class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.4/lightdash-cli-0.2251.4-macos-arm64.tar.gz"
      sha256 "8b9849973ddb601841b3bbab1e8bf3f255b21422f287705ca24c9125a68f101a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.4/lightdash-cli-0.2251.4-macos-x64.tar.gz"
      sha256 "c7d63a2d8310851821a5be6638237a27189fa9c97de01c1d185549a9457ac587"
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
