class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2479.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2479.0/lightdash-cli-0.2479.0-macos-arm64.tar.gz"
      sha256 "6005c982030653ffaac9ccd01fa39d7c4f54ad10744cf11b6a04e870c763b199"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2479.0/lightdash-cli-0.2479.0-macos-x64.tar.gz"
      sha256 "51a06385776258056422fc31a68f23a9fbe981037c364e467d4323a70e04ff76"
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
