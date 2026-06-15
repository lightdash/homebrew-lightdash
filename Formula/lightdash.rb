class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3160.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3160.0/lightdash-cli-0.3160.0-macos-arm64.tar.gz"
      sha256 "c9615c5b5d7700f82553c9119e8e6f42d045f6351d2fb8c6c6a02936772960c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3160.0/lightdash-cli-0.3160.0-macos-x64.tar.gz"
      sha256 "55b1cb039e573ca98cb17ddf96d80899fdc51c17d984cec132cdff43994addb6"
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
