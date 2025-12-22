class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.0/lightdash-cli-0.2270.0-macos-arm64.tar.gz"
      sha256 "5361624a1b875f224214285b1dc470ebe987218af657f67790141ad4762077f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.0/lightdash-cli-0.2270.0-macos-x64.tar.gz"
      sha256 "ffbeaa4ce6db644db70e13b3f79dcf0377763183dad710919ab0f97b8357fa86"
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
