class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2463.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2463.0/lightdash-cli-0.2463.0-macos-arm64.tar.gz"
      sha256 "5b7d24d6c65eb35c32062d494387d2487ad9e56b2a51c85c7f575ea6aa6fe069"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2463.0/lightdash-cli-0.2463.0-macos-x64.tar.gz"
      sha256 "0d2470a2c21c5f38676acfbbddfb96f2576144d05b403b020165c88e09abdb5c"
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
