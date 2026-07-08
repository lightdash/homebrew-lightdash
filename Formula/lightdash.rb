class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3334.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.2/lightdash-cli-0.3334.2-macos-arm64.tar.gz"
      sha256 "8c956f6656dee670fe1172f467a247c5f87b58ae718020a4f022d5cba9dcf5dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.2/lightdash-cli-0.3334.2-macos-x64.tar.gz"
      sha256 "bcb332f6331e21dc0db8a4718c5e19d4ba452f516e1f4650e48af33da11ae35e"
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
