class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2463.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2463.1/lightdash-cli-0.2463.1-macos-arm64.tar.gz"
      sha256 "f97cea8cf6988a1bbaa54b297cd862de89b754397461e6194b9773a40952ea20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2463.1/lightdash-cli-0.2463.1-macos-x64.tar.gz"
      sha256 "b5af121db6bbc288e75c629da79822766df6140732accc6c0f1f6d4d3c2b86b7"
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
