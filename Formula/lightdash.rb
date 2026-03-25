class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2662.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.2/lightdash-cli-0.2662.2-macos-arm64.tar.gz"
      sha256 "27f6c66679bd0a6647191d196f165a0fac95109acc258067638b332e5750a6e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.2/lightdash-cli-0.2662.2-macos-x64.tar.gz"
      sha256 "46f99aefd7e99bf72c837c97d18ff8672e6bb022843720c578d44241cbcf7d20"
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
